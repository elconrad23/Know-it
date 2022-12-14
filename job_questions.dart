// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'job_answers.dart';

class Job_Questions extends StatefulWidget {
  const Job_Questions({super.key});

  @override
  State<Job_Questions> createState() => _Job_QuestionsState();
}

class _Job_QuestionsState extends State<Job_Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job ice-breaker questions..'),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Job_answers(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
