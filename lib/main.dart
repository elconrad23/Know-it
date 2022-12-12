import 'dart:async';
import 'dart:math';
import 'screens/job_questions.dart';
import 'screens/health_questions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Timer timer;
  late Random random;
  late String result;
  late double degree;
  late int time;

  @override
  void initState() {
    //TODO implement initState
    super.initState();

    random = Random();
    degree = 0;
    result = "";
  }

  void rotateWheel() {
    time = 3000;
    timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (time > 0) {
        setState(() {
          degree = random.nextInt(360).toDouble();
          result = calculatePoint(degree);
        });
        time = time - 100;
      }
    });
  }

  String calculatePoint(double degree) {
    String res = "";
    int lowpoint = 0;
    int arc = 30;
    int sectors = 12;

    for (int i = sectors; i > 0; i++) {
      if (degree > lowpoint && degree < lowpoint + arc) {
        res = i.toString();
        break;
      }
      lowpoint = lowpoint + arc;
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
              height: 400,
              child: Stack(
                children: [
                  Positioned(
                    child: Align(
                      alignment: Alignment.center,
                      child: Transform.rotate(
                        angle: 3.14 / 180 * degree,
                        child: const Image(
                          width: 350,
                          height: 350,
                          image: AssetImage("images/DeWgJ.jpg"),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        width: 50,
                        height: 50,
                        image: AssetImage("assets/"),
                      ),
                    ),
                  )
                ],
              )),
          Text(
            result,
            style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 50,
                color: Colors.blue),
          ),
          TextButton(
            onPressed: () {
              rotateWheel();
            },
            //displays either job or health questions
            child: const Text("Category to play"),
          )
        ],
      ),
    );
  }
}
