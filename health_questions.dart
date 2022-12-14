import 'package:flutter/material.dart';
import 'Health_answers.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sexual health ice-breaker questions!'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Pick a team and get playing!"),
            leading: const Icon(Icons.text_fields_outlined),
            trailing: const Icon(Icons.chevron_right_sharp),
            subtitle: const Text("Click to answer and rate your knowledge"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Screen(),
                ),
              );
            },
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Answers(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
