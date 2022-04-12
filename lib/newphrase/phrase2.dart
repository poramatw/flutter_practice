// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practice/newphrase/provider/transaction_prod.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'models/transaction.dart';
import 'screens/acDetails.dart';

class PhraseTwo extends StatefulWidget {
  const PhraseTwo({Key? key}) : super(key: key);

  @override
  State<PhraseTwo> createState() => _PhraseTwoState();
}

class _PhraseTwoState extends State<PhraseTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return AcDetials();
                })));
              },
              icon: const Icon(Icons.navigate_next))
        ],
      ),
      body: Consumer(
        builder: (context, TransactionProvider provider, child) {
          var count = provider.transactions.length;
          if (count <= 0) {
            return Center(
              child: Text(
                "No data",
                style: TextStyle(fontSize: 35),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: count,
              itemBuilder: (context, index) {
                Transactions data = provider.transactions[index];
                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text("ประเภทบัญชี "),
                          Text(data.acct_type),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("หมายเลขบัญชี "),
                          Text(data.acct_number)
                        ],
                      ),
                      Row(
                        children: [
                          const Text("มาร์จิ้น "),
                          Text(NumberFormat("#,###.##")
                              .format(data.acct_margin)),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("เครดิต "),
                          Text(NumberFormat("#,###.##")
                              .format(data.acct_credits)),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}
