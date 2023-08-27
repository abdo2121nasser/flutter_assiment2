import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/patiant_account.dart';

class PatiantAccountInformation
{
  final IconData icon;
  final String data;
  PatiantAccountInformation({required this.icon,required this.data});

}
List<PatiantAccountInformation> patiantiformation=[
  PatiantAccountInformation(icon:Icons.alarm ,data:time),
  PatiantAccountInformation(icon:Icons.phone_android ,data:time ),
  PatiantAccountInformation(icon:Icons.location_on_sharp ,data:time ),
  PatiantAccountInformation(icon:Icons.file_open ,data:time ),

];