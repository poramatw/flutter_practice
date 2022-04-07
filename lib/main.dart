// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "Mtest",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: Text("Hello World"),
    ),
  );
  runApp(app);
}
