// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Fluttless());
}

class Fluttless extends StatelessWidget {
  const Fluttless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mainpage",
      home: Fluttful(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

class Fluttful extends StatefulWidget {
  const Fluttful({Key? key}) : super(key: key);

  @override
  State<Fluttful> createState() => _FluttfulState();
}

class _FluttfulState extends State<Fluttful> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: getData(100),
        ),
      ),
    );
  }

  List<Widget> getData(int count) {
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      data.add(Text(
        "List ${i + 1}",
        style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 49, 9, 229)),
      ));
    }
    return data;
  }
}
