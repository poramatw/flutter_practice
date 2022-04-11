import 'package:flutter/material.dart';

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
        title: const Text("data"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Container(),
    );
  }
}
