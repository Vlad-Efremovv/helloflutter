import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyfirstApp());

class MyfirstApp extends StatefulWidget {
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
          title: Text("My first app"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LinearProgressIndicator(
                        value: _progressvalue,
                      ),
                      Text(
                        "${(_progressvalue * 100).round()}%",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )
                : Text(
                    "Press button to download",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgress();
            });
          },
          child: Icon(Icons.cloud_download),
        ),
      ),
    );
  }

  void _updateProgress() {
    const onewSec = const Duration(seconds: 1);
    Timer.periodic(onewSec, (Timer t) {
      setState(() {
        _progressvalue += 0.17;
        if (_progressvalue >= 1.0) {
          _loading = false;
          t.cancel();
          _progressvalue = 0.0;
          return;
        }
      });
    });
  }
}
