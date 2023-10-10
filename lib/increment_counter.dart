import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int num = 0;
  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$num"),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  num++;
                });
              },
              child: const Text("ok"),
            ),
          ],
        ),
      ),
    );
  }
}
