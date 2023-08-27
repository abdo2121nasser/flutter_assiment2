import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalInformation
{
 final IconData icon;
 final String data;

  PersonalInformation({required this.icon,required this.data});
}
List<PersonalInformation> information=[
  PersonalInformation(icon: Icons.phone_android, data: '033543435415'),
  PersonalInformation(icon: Icons.alternate_email, data:'maria.leonte@gmail'),
  PersonalInformation(icon: Icons.work, data: '49 Nerva Traian Streat, Bucharest')

];