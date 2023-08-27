import 'package:flutter/material.dart';
import 'package:task2/screens/screen1.dart';

void main()
{
  runApp(Task2());
}


class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
