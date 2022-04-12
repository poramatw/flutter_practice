// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'newphrase/phrase2.dart';
import 'newphrase/provider/transaction_prod.dart';

class Fluttless extends StatelessWidget {
  const Fluttless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return TransactionProvider();
        }),
      ],
      child: MaterialApp(
        title: "mainpage",
        home: PhraseTwo(),
        //theme: ThemeData(primarySwatch: Colors.indigo),
      ),
    );
  }
}
