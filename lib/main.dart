import 'package:flutter/material.dart';

void main() => runApp(MyfirstApp());

class MyfirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("Жучарник"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                LinearProgressIndicator(
                  value: 23,
                ),
                Text(
                  "23 %",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "Press button to download",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
