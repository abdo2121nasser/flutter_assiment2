import 'package:flutter/material.dart';

class CardModel
{
  String text1,text2,rank,image;
  Color color;

  CardModel({
    required this.text1,
    required this.text2,
    required this.rank,
    required this.image,
    required this.color
  });
}


List<CardModel>data=
[
CardModel(
    text1: 'David Borg',
    text2: 'Title: Fling Wings',
    rank: '1',
    image: 'https://th.bing.com/th/id/R.70653e2f2e0fc4960ba10357747fb1b9?rik=Jys9khc2C2xmcA&pid=ImgRaw&r=0',
  color: Colors.blue
     ),
  CardModel(
      text1: 'Lucy',
      text2: 'Growing up trouble',
      rank: '2',
      image: 'https://th.bing.com/th/id/OIP.UGlKxiZQylR3CnJIXSbFIAHaLL?pid=ImgDet&rs=1'
     , color: Colors.orangeAccent
  ),CardModel(
    text1: 'Jerry Cool West',
    text2: 'Title: Scelptor diary',
    rank: '3',
    image: 'https://pixhawk.org/wp-content/uploads/2020/04/pixhawk2.png',
    color: Colors.redAccent
),CardModel(
    text1: 'Bold',
    text2: 'Title: Illustration of little girl',
    rank: '4',
    image: 'https://th.bing.com/th/id/OIP.xzxte-TlXrYEeeI9L0lcfQHaHa?pid=ImgDet&rs=1'
    ,color: Colors.purpleAccent
),
  CardModel(
    text1: 'Daived Borg',
    text2: 'Title: Fling Wings',
    rank: '1',
    image: 'https://s3.amazonaws.com/media.cloversites.com/6f/6f4cdfa3-aab6-4433-8c0e-0a9495c227ca/site-images/aaaf0c10-4dbb-4623-9704-940ad16a6366@2x.jpg'
      ,color: Colors.green
  ),
];