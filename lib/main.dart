// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'containerView.dart';

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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              ContainView("MT4 STANDARD ACCOUNT", 1234567890, "2,000.00",
                  Color.fromRGBO(255, 193, 79, 1)),
              SizedBox(
                height: 15,
              ),
              ContainView("MT4 STANDARD ACCOUNT", 1234567890, "1,900.00",
                  Color.fromRGBO(19, 244, 157, 1))
            ],
          ),
        ),
      )),
    );
  }
}
