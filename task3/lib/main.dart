import 'package:flutter/material.dart';
import 'package:task3/screens/screen1.dart';

void main() {
  runApp(Task3());
}



class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:Screen1() ,
    );
  }
}
