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
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          // ignore: prefer_const_constructors
          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: const ListTile(
              leading: CircleAvatar(
                child: FittedBox(
                  child: Text("0"),
                ),
              ),
              title: Text("menu"),
              subtitle: Text("data"),
            ),
          );
        },
      ),
      backgroundColor: const Color.fromRGBO(29, 29, 111, 1),
    );
  }
}
