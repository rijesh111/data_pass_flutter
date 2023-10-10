import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String text;
  const Page2({super.key, required this.text});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("second page"),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
