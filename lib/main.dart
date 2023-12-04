import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text("My first app"),
          centerTitle: true,
          backgroundColor: Colors.blue.shade200,
        ),
        body: const Center(
          child: Text(
            "This is my Homepage",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
      ),
    ),
  );
}
