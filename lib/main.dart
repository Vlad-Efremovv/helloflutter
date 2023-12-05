import 'package:flutter/material.dart';

void main() {
  runApp(MyfirstApp());
}

class MyfirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("My first App"),
          centerTitle: true,
        ),
      ),
    );
  }
}
