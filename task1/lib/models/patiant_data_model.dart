import 'package:flutter/material.dart';

class PatiantInformation
{
  String name,time;
  bool icon=false,hasiIcon=false;
  PatiantInformation({required this.name, required this.time,this.icon=false,this.hasiIcon=false});
}

List<PatiantInformation> pation=[
  PatiantInformation(name: 'Julian Ruja', time: ' 10:50'),
  PatiantInformation(name: 'Victoria Olari', time: ' 13:00'),
  PatiantInformation(name: 'Diana Stefan', time: ' 15:20'),
  PatiantInformation(name: 'Gheorge Popa', time: ' 16:10'),
  PatiantInformation(name: 'Alexandaru Sandu', time: ' 16:40',icon: false,hasiIcon: true),
  PatiantInformation(name: 'Dumitru Simona', time: ' 08:00',icon: true,hasiIcon: true),

];