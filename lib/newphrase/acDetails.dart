// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AcDetials extends StatelessWidget {
  const AcDetials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Detials"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "textformfield"),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "textformfield",
                ),
                keyboardType: TextInputType.number,
              ),
              FlatButton(
                child: const Text("add"),
                color: Colors.amber,
                textColor: const Color.fromARGB(255, 17, 6, 119),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(29, 29, 111, 1),
    );
  }
}
