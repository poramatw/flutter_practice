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
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const Text("Nextpage");
                })));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Column(),
      backgroundColor: const Color.fromRGBO(29, 29, 111, 1),
    );
  }
}
