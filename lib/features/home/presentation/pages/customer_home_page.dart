import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jastipin_yuk/core/network/websocket/websocket_client.dart';
import 'package:jastipin_yuk/features/home/presentation/bloc/home_cubit.dart';
import 'package:jastipin_yuk/main.dart';

class CustomerHomePage extends StatefulWidget {
  const CustomerHomePage({super.key});

  @override
  State<CustomerHomePage> createState() => _CustomerHomePageState();
}

class _CustomerHomePageState extends State<CustomerHomePage> {
  late final CounterBloc _counterBloc;
  late final WebsocketClient _websocketClient;
  StreamSubscription? _stream1;

  @override
  void initState() {
    _counterBloc = CounterBloc();
    _websocketClient = injector.get<WebsocketClient>();

    super.initState();
  }

  void _onConnect() {
    _websocketClient.connect(
      url: "ws://127.0.0.1:8088/ws?userId=517192a2-6004-4919-80fb-e5d63da24185",
    );
  }

  void _onSubscribe() {
    _stream1 = _websocketClient.subscribe("chat").listen((event) {
      print(event);
    });
  }

  void _onSend() {
    _websocketClient.send("chat", {
      "type": 'send_private_chat',
      "to": "c9714135-42f3-4d25-b7b3-e74ccd2c9d21",
      "msg": "ini testing",
      "refId": "0001",
      "contentType": "text",
      "meta": "testing.jpg",
    });
  }

  void _onUnSubscribe() {
    _stream1?.cancel();
    _websocketClient.unsubscribe("chat");
  }

  void _onDisconnect() {
    _websocketClient.disconnect();
  }

  @override
  void dispose() {
    _counterBloc.close();
    _stream1?.cancel();
    _websocketClient.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: _onConnect, child: Text("Connect")),
            TextButton(onPressed: _onSend, child: Text("Send")),
            TextButton(onPressed: _onSubscribe, child: Text("Subscribe")),
            TextButton(onPressed: _onUnSubscribe, child: Text("Unsubscribe")),
            TextButton(onPressed: _onDisconnect, child: Text("Disconnect")),

            BlocProvider.value(
              value: _counterBloc,
              child: BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(state.value.toString());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
