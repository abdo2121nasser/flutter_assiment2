import 'package:flutter/material.dart';
import 'package:task4/screens/screen1.dart';

void main() {
  runApp(Task4());
}


class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
