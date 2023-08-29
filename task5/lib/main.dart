import 'package:flutter/material.dart';
import 'package:task5/screens/screen1.dart';

void main() {
  runApp(Task5());
}


class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
