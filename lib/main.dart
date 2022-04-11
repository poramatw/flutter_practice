// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'newphrase/phrase2.dart';

void main() {
  runApp(Fluttless());
}

class Fluttless extends StatelessWidget {
  const Fluttless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mainpage",
      home: PhraseTwo(),
      //theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}
