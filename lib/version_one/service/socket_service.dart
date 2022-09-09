import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

class SocketService{
  static String SERVER = 'wss://api.hollaex.com/stream';

  static WebSocketChannel channel=WebSocketChannel.connect(Uri.parse(SERVER),);

  static void connectSocketChannel(){
    // channel.sink.add('{"op":"subscribe","args":["orderbook:xht-usdt"]}');
    channel.sink.add(
      jsonEncode(
        {
          "op": "subscribe",
          "args": ['orderbook', 'trades'],
        },
      ),
    );
  }

  static void closeSocketChannel(){
    channel.sink.close();
  }}