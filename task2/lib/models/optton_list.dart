import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptionList
{
  IconData icon;
  String name;
  bool flage;
  OptionList({required this.icon,required this.name,required this.flage});


}

List<OptionList> data=[
  OptionList(icon: Icons.privacy_tip_outlined, name: 'Privacy', flage: true),
  OptionList(icon: Icons.history, name: 'Purchase History', flage: true),
  OptionList(icon: Icons.contact_support_outlined, name: 'Help & Support', flage: true),
  OptionList(icon: Icons.settings, name: 'Settings', flage: true),
  OptionList(icon: Icons.person, name: 'Invite a Friend', flage: true),
  OptionList(icon: Icons.logout_outlined, name: 'Logout', flage: false),

];