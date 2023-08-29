import 'package:flutter/material.dart';
import 'package:task6/screens/Screen1.dart';

void main() {
  runApp(Task6());
}


class Task6 extends StatelessWidget {
  const Task6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
