// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'menuSt.dart';

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
  int number = 20;

  List<FoodMenu> menu = [
    FoodMenu("name", "1000", "assets/images/logo.png"),
    FoodMenu("name2", "500", "assets/images/logo.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, index) {
              FoodMenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(food.name),
                subtitle: Text("price " + food.price),
              );
            }));
  }
}
