// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "account Detials",
      home: Detials(),
    );
  }
}

class Detials extends StatefulWidget {
  const Detials({Key? key}) : super(key: key);

  @override
  State<Detials> createState() => _DetialsState();
}

class _DetialsState extends State<Detials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(40)),
                  color: Color.fromRGBO(255, 193, 79, 1)),
              height: 250,
              width: 400,
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.navigate_before),
                          iconSize: 40,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "MT4 Standard Account",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(29, 29, 111, 1)),
                    height: 100,
                    width: 100,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.access_alarm),
                Text("รายละเอียดบัญชี"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 250,
              width: 350,
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  height: 250,
                  width: 175,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ประเภทบัญชี",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "หมายเลขบัญชี",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "มาร์จิ้น",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "เครดิต",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "เลเวอเลจ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "ชื่อบัญชี",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "รหัสผ่านสำหรับการซื้อขาย",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "รหัสผ่านสำหรับดูเท่านั้น",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  height: 250,
                  width: 175,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "STANDARD",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "MT4-123456789",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "500.00",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "200.00",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "100",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "abcdefghigklmn",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "asdfasdfasdfasdfasdf",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "fasdfasdfasdfasdfafsd",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 100,
            ),
            FloatingActionButton(onPressed: (() {
              Navigator.pop(context);
            }))
          ],
        ),
      ),
    );
  }
}
