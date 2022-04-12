// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AcDetials extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

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
          key: formKey,
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "textformfield"),
                    validator: (str) {
                      if (str == null || str.isEmpty) {
                        return "fill this!";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "textformfield"),
                    validator: (str) {
                      if (str == null || str.isEmpty) {
                        return "fill this!";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "textformfield"),
                    keyboardType: TextInputType.number,
                    validator: (str) {
                      if (str == null || str.isEmpty) {
                        return "fill this!";
                      }
                      if (double.parse(str) <= 0) {
                        return "fill this!";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "textformfield"),
                    keyboardType: TextInputType.number,
                    validator: (str) {
                      if (str == null || str.isEmpty) {
                        return "fill this!";
                      }
                      if (double.parse(str) <= 0) {
                        return "fill this!";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "textformfield"),
                    keyboardType: TextInputType.number,
                    validator: (str) {
                      if (str == null || str.isEmpty) {
                        return "fill this!";
                      }
                      if (double.parse(str) <= 0) {
                        return "fill this!";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "textformfield"),
                    validator: (str) {
                      if (str == null || str.isEmpty) {
                        return "fill this!";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "textformfield"),
                    validator: (str) {
                      if (str == null || str.isEmpty) {
                        return "fill this!";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "textformfield"),
                    validator: (str) {
                      if (str == null || str.isEmpty) {
                        return "fill this!";
                      }
                      return null;
                    },
                  ),
                  FlatButton(
                    child: const Text("add"),
                    color: Colors.amber,
                    textColor: const Color.fromARGB(255, 17, 6, 119),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                        Navigator.pop(context);
                      }
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
