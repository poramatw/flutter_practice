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
      appBar: AppBar(
        title: Text("MtestFX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Image(
                image: NetworkImage(
                    "https://uxwing.com/wp-content/themes/uxwing/download/42-business-professional-services/trade.png")),
            Text(
              "MtestFX",
              style: TextStyle(fontSize: 40, color: Colors.green),
            ),
            Text("MtestFX LOW SPREAD",
                style: TextStyle(fontSize: 15, color: Colors.green)),
            Text("สามารถส่งคำสั่งได้ตลอด ราคาส่งตรงจาก LP",
                style: TextStyle(fontSize: 15, color: Colors.green)),
            Text("ทดลองเทรดฟรี ฝากเงินเพื่อรับโบนัส 30%",
                style: TextStyle(fontSize: 15, color: Colors.green)),
            Text("สูงสุดถึง $number และโปรโมชั่นอีกมากมาย",
                style: TextStyle(fontSize: 15, color: Colors.green)),
            Text("เพียงแค่เทรดกับเรา",
                style: TextStyle(fontSize: 15, color: Colors.green))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
