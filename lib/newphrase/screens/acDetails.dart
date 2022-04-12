// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_practice/newphrase/models/transaction.dart';
import 'package:flutter_practice/newphrase/provider/transaction_prod.dart';
import 'package:provider/provider.dart';
import 'package:flutter_practice/newphrase/models/transaction.dart';

// ignore: use_key_in_widget_constructors
class AcDetials extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  final accTypeController = TextEditingController();

  final accNumController = TextEditingController();
  final marginController = TextEditingController();

  final creditController = TextEditingController();

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
                        const InputDecoration(labelText: "Account Type"),
                    controller: accTypeController,
                    validator: (str) {
                      if (str == null || str.isEmpty) {
                        return "fill this!";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(labelText: "Account Number"),
                    controller: accNumController,
                    validator: (str) {
                      if (str == null || str.isEmpty) {
                        return "fill this!";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Margin"),
                    controller: marginController,
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
                    decoration: const InputDecoration(labelText: "Credit"),
                    controller: creditController,
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
                  FlatButton(
                    child: const Text("add"),
                    color: Colors.amber,
                    textColor: const Color.fromARGB(255, 17, 6, 119),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        var accType = accTypeController.text;
                        var accNum = accNumController.text;
                        var accMar = marginController.text;
                        var accCredit = creditController.text;

                        Transactions statement = Transactions(
                            acct_type: accType,
                            acct_number: accNum,
                            acct_margin: double.parse(accMar),
                            acct_credits: double.parse(accCredit));

                        var provider = Provider.of<TransactionProvider>(context,
                            listen: false);
                        provider.addTransaction(statement);
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
