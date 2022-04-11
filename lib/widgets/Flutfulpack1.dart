import 'containerView.dart';
import 'package:flutter/material.dart';
import 'ExchangeRate.dart';
import 'package:http/http.dart' as http;

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
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: getExchangeRate(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                var result = snapshot.data;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      children: [
                        ContainView("EUR", 1234567890, 1, Colors.greenAccent),
                        const SizedBox(
                          height: 10,
                        ),
                        ContainView("USD", 1234567890, result.rates["USD"],
                            Colors.greenAccent),
                        const SizedBox(
                          height: 10,
                        ),
                        ContainView("THB", 1234567890, result.rates["THB"],
                            const Color.fromARGB(255, 65, 135, 241))
                      ],
                    ),
                  ),
                );
              }

              return const LinearProgressIndicator();
            }),
      ),
      backgroundColor: const Color.fromRGBO(29, 29, 111, 1),
    );
  }
}
