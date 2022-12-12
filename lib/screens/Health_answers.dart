import 'package:flutter/material.dart';

class Answers extends StatefulWidget {
  const Answers({super.key});

  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rate yourselves ;-/)'),
      ),
      body: const Center(
        child: Text('//Asnwers attached to the questions'),
      ),
    );
  }
}
