import 'package:jastipin_yuk/core/network/websocket/websocket_client.dart';
import 'package:jastipin_yuk/features/chat/data/models/chat_ack_model.dart';
import 'package:jastipin_yuk/features/chat/data/models/chat_message_event_model.dart';
import 'package:jastipin_yuk/features/chat/data/models/chat_message_model.dart';

abstract class ChatNetworkDataSource {
  Stream<ChatMessageEventModel> subscribeToChat();
  Future<void> unsubscribeChat();
}

class ChatNetworkDataSourceImpl implements ChatNetworkDataSource {
  final WebsocketClient _websocketClient;

  const ChatNetworkDataSourceImpl(this._websocketClient);
  @override
  Stream<ChatMessageEventModel> subscribeToChat() {
    return _websocketClient.subscribe("chat").map((event) {
      final type = event['type'];
      switch (type) {
        case 'send_chat_ack':
          return ChatAckModel.fromJson(event);
        case 'chat_message':
          return ChatMessageModel.fromJson(event);
        default:
          throw Exception("Unknown chat event type: $type");
      }
    });
  }

  @override
  Future<void> unsubscribeChat() async {
    _websocketClient.unsubscribe("chat");
  }
}
