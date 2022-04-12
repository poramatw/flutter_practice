import 'package:flutter/material.dart';
import 'package:flutter_practice/newphrase/provider/transaction_prod.dart';
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
          return ListView.builder(
            itemCount: provider.transactions.length,
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
                        Text(data.acct_margin.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("เครดิต "),
                        Text(data.acct_credits.toString()),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("เลเวอเลจ "),
                        Text(data.acct_lvg.toString())
                      ],
                    ),
                    Row(
                      children: [
                        const Text("ชื่อบัญชี "),
                        Text(data.acct_name)
                      ],
                    ),
                    Row(
                      children: [
                        const Text("รหัสผ่านสำการซื้อขาย "),
                        Text(data.acct_pass_trans)
                      ],
                    ),
                    Row(
                      children: [
                        const Text("รหัสผ่านสำดูเท่านั้น "),
                        Text(data.acct_pass_watch)
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      backgroundColor: const Color.fromRGBO(29, 29, 111, 1),
    );
  }
}
