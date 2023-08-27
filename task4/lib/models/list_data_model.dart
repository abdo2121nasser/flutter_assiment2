import 'package:flutter/material.dart';

class ListModel {
  String name;
  IconData icon;
  bool flage;
 static int index=0;
  ListModel({required this.name,required this.icon,required this.flage});
}


List<ListModel> data=[
  ListModel(name: 'Buying', icon: Icons.shopping_cart_outlined,flage: true),
  ListModel(name: 'Selling', icon: Icons.store_outlined,flage: false),
  ListModel(name: 'Trades', icon: Icons.work_outline_sharp,flage: false),
  ListModel(name: 'Videos', icon: Icons.slow_motion_video_sharp,flage: false),
  ListModel(name: 'Deals', icon: Icons.discount_outlined,flage: false),
  ListModel(name: 'Case Study', icon: Icons.bookmark,flage: false),

];