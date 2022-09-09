import 'package:flutter/material.dart';

import '../service/socket_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState(){
    super.initState();
    SocketService.connectSocketChannel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Socket"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: StreamBuilder(
          stream: SocketService.channel.stream,
          builder: (context,snapshot){
            return Center(
              child: Text(
                snapshot.hasData ? '${snapshot.data}':'No data',
                style: const TextStyle(fontSize: 22),
              ),
            );
          },
        ),
      ),
    );
  }
}