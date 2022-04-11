import 'package:flutter/material.dart';
import 'acDetails.dart';

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
                  return const AcDetials();
                })));
              },
              icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(),
      backgroundColor: const Color.fromRGBO(29, 29, 111, 1),
    );
  }
}
