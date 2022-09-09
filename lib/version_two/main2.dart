import 'package:flutter/material.dart';
import 'package:web_socket/version_two/pages/home_page_two.dart';

void main(){
  runApp(const MyAppTwo());
}
class MyAppTwo extends StatelessWidget {
  const MyAppTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}
