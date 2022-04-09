import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainView extends StatelessWidget {
  String title;
  int account;
  String amount;
  Color color;

  // ignore: use_key_in_widget_constructors
  ContainView(this.title, this.account, this.amount, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(25)),
      height: 250,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(29, 29, 111, 1)),
            ),
          ),
          Expanded(
            child: Text(
              account.toString(),
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(29, 29, 111, 1)),
            ),
          ),
          Expanded(
            child: Text(
              amount + " USD",
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(29, 29, 111, 1)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 240, 240, 239)),
            height: 50,
            width: 190,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "View Details",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromRGBO(29, 29, 111, 1)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
