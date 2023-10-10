import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

class Real extends StatefulWidget {
  const Real({super.key});

  @override
  State<Real> createState() => _RealState();
}

class _RealState extends State<Real> {
  final TextEditingController _text1 = TextEditingController();
  String text1 = "";
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 75, 75),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: _text1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 253, 250, 250))),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page2(text: _text1.text),
                    ));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: const Text('next'),
            ),
          ],
        ),
      ),
    );
  }
}
