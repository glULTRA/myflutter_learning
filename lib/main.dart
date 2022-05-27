import 'package:flutter/material.dart';
 
void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text("Tasks"),
        ),
        drawer: const Drawer(
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.cyanAccent,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100),
              topRight: Radius.circular(100),
            ),
          ),
          margin: const EdgeInsets.only(
            left: 40,
            bottom: 400,
            top: 20,
            right: 40,
          ),
          width: 400,
          height: 400,
          child: const Text(
            "Hello",
            style: TextStyle(
              fontSize: 35,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
