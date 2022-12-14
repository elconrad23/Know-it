// ignore_for_file: camel_case_types, duplicate_ignore, unused_import
import 'package:flutter/material.dart';
import 'job_answers.dart';

class Job_answers extends StatefulWidget {
  const Job_answers({super.key});

  @override
  State<Job_answers> createState() => _Job_answersState();
}

// ignore: camel_case_types
class _Job_answersState extends State<Job_answers> {
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
