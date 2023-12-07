// ignore_for_file: unused_field

import 'package:flutter/material.dart';

void main() => runApp(const MyfirstApp());

class MyfirstApp extends StatefulWidget {
  const MyfirstApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyfirstApp> {
  bool _loading = false;
  double _progressvalue = 0.0;

  @override
  void initState() {
    _loading = false;
    _progressvalue = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text("My first app"),
          centerTitle: true,
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              const Image(
                image: AssetImage('assets\\images\\gdsbdf97ihq31.png'),
              ),
              Image.asset('assets\\icon\\flickr_logo_icon_259363.ico'),
            ],
          ),
        ),
      ),
    );
  }
}
