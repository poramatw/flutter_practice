// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'api/ExchangeRate.dart';

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
  late ExchangeRate dataFromAPI;
  @override
  void initState() {
    super.initState();
    print("initState");
    getExchangeRate();
  }

  Future<ExchangeRate> getExchangeRate() async {
    var url = Uri.parse(
        'http://api.exchangeratesapi.io/v1/latest?access_key=a6d6858ee0b579115fb588d4d0274761&symbols=USD,THB&format=1');
    var response = await http.get(url);
    dataFromAPI = exchangeRateFromJson(response.body);
    return dataFromAPI;
  }

  @override
  Widget build(BuildContext context) {
    print("buildState");
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder(
              future: getExchangeRate(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  var result = snapshot.data;
                  return ListView(
                    children: [
                      ListTile(
                        title: Text(result.base),
                      ),
                      ListTile(
                        title: Text("${result.date}"),
                      ),
                      ListTile(
                        title: Text(result.rates["THB"].toString()),
                      ),
                      ListTile(
                        title: Text(result.rates["USD"].toString()),
                      )
                    ],
                  );
                }

                return LinearProgressIndicator();
              })),
    );
  }
}
