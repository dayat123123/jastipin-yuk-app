import 'dart:async';
import 'dart:convert';
import 'package:web_socket_channel/io.dart';
import 'package:rxdart/rxdart.dart';

typedef SocketMessage = Map<String, dynamic>;

enum SocketStatus { connecting, connected, reconnecting, disconnected, error }

class WebsocketClient {
  String? _socketUrl;
  IOWebSocketChannel? _channel;

  final Map<String, _EventStream> _subscribers = {};
  final Map<String, SocketMessage> _savedSubscriptions = {};
  final BehaviorSubject<SocketStatus> _statusController = BehaviorSubject();

  Stream<SocketStatus> get status => _statusController.stream;
  bool get isConnected => _channel != null;
  String get socketUrl => _socketUrl ?? "";

  Timer? _reconnectTimer;
  Duration _reconnectDelay = const Duration(seconds: 1);
  final Duration _maxReconnectDelay = const Duration(seconds: 60);

  bool _isManuallyDisconnecting = false;

  WebsocketClient();

  Future<void> connect({
    required String url,
    Map<String, String>? headers,
  }) async {
    if (isConnected) return;
    _socketUrl = url;

    try {
      _isManuallyDisconnecting = false;
      _statusController.add(SocketStatus.connecting);

      _channel = IOWebSocketChannel.connect(
        Uri.parse(_socketUrl!),
        headers: headers,
      );

      await _channel!.ready.timeout(const Duration(seconds: 2));
      _reconnectDelay = const Duration(seconds: 1);
      _statusController.add(SocketStatus.connected);

      _channel!.stream.listen(
        _onMessageReceived,
        onError: _onError,
        onDone: _onDone,
      );

      _restoreSubscriptions();
      print("Connected to socket server");
    } catch (e) {
      _channel?.sink.close();
      _channel = null;
      if (!_isManuallyDisconnecting) {
        _attemptReconnect();
        _statusController.add(SocketStatus.error);
      }
    }
  }

  void disconnect() {
    if (_channel == null) return;
    _isManuallyDisconnecting = true;
    _reconnectTimer?.cancel();
    _clearSubscriptions();
    _channel?.sink.close();
    _channel = null;
    _statusController.add(SocketStatus.disconnected);
    print("Disconnected manually");
  }

  void send(String event, SocketMessage data) {
    if (_channel == null) throw StateError("WebSocket not connected");
    _publish("send", event, data);
  }

  Stream<SocketMessage> subscribe(
    String event, [
    SocketMessage data = const {},
  ]) {
    _savedSubscriptions[event] = data;

    final eventStream = _subscribers.putIfAbsent(event, () {
      final controller = StreamController<SocketMessage>.broadcast();
      return _EventStream(controller);
    });

    if (eventStream.subscriberCount == 0) {
      _publish("subscribe", event, data);
    }

    eventStream.increment();
    return eventStream.controller.stream;
  }

  void unsubscribe(String event, [SocketMessage data = const {}]) {
    final sub = _subscribers[event];
    if (sub == null) return;

    sub.decrement();
    if (sub.subscriberCount <= 0) {
      _publish("unsubscribe", event, data);
      sub.controller.close();
      _subscribers.remove(event);
      _savedSubscriptions.remove(event);
    }
  }

  void _publish(String type, String event, SocketMessage data) {
    if (_channel == null) throw StateError("WebSocket not connected");

    _channel!.sink.add(
      jsonEncode({"type": type, "event": event, "data": data}),
    );
    print(">>> $type $event");
  }

  void _onMessageReceived(dynamic rawData) {
    try {
      final decoded = jsonDecode(rawData);
      final event = decoded['event'];
      final data = decoded['data'];

      if (event != null && _subscribers.containsKey(event)) {
        if (data is SocketMessage) {
          _subscribers[event]!.controller.add(data);
        } else {
          _subscribers[event]!.controller.addError(
            'Invalid data received for event: $event',
          );
        }
      }
    } catch (e) {
      for (var s in _subscribers.values) {
        s.controller.addError('Failed to parse message: $e');
      }
      print("Error parsing message: $e");
    }
  }

  void _onError(dynamic error) {
    _statusController.add(SocketStatus.error);
    print(error);
    _handleDisconnect();
  }

  void _onDone() {
    _statusController.add(SocketStatus.disconnected);
    _handleDisconnect();
  }

  void _handleDisconnect() {
    _channel?.sink.close();
    _channel = null;

    if (!_isManuallyDisconnecting) {
      _attemptReconnect();
    }
  }

  void _restoreSubscriptions() {
    for (var entry in _savedSubscriptions.entries) {
      final event = entry.key;
      final data = entry.value;

      _subscribers.putIfAbsent(
        event,
        () => _EventStream(StreamController<SocketMessage>.broadcast()),
      );

      _publish("subscribe", event, data);
      print("Restored subscription: $event");
    }
  }

  void _clearSubscriptions() {
    for (var s in _subscribers.values) {
      s.controller.close();
    }
    _subscribers.clear();
    _savedSubscriptions.clear();
    print("All subscriptions cleared");
  }

  void _attemptReconnect() {
    if (isConnected || _isManuallyDisconnecting) {
      _reconnectTimer?.cancel();
      return;
    }

    _reconnectTimer?.cancel();
    _statusController.add(SocketStatus.reconnecting);

    _reconnectTimer = Timer(_reconnectDelay, () {
      print("Attempting to reconnect in ${_reconnectDelay.inSeconds}s...");
      connect(url: _socketUrl!);

      if (_reconnectDelay < _maxReconnectDelay) {
        _reconnectDelay *= 2;
      }
    });
  }
}

class _EventStream {
  final StreamController<SocketMessage> controller;
  int subscriberCount = 0;

  _EventStream(this.controller);

  void increment() => subscriberCount++;
  void decrement() => subscriberCount--;
}
