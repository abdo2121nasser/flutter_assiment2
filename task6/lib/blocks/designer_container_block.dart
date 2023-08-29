import 'package:flutter/material.dart';
import 'package:task6/models/card_data_model.dart';

import 'information_block.dart';

class DesignerContainerBlock extends StatelessWidget {
   DesignerContainerBlock({required this.data});
   CardModel data;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      alignment: Alignment.center,
      width:400 ,height: 170,
      decoration: BoxDecoration(
        image: const DecorationImage(
          opacity: 0.6,
            image: NetworkImage('https://www.pixelstalk.net/wp-content/uploads/2016/04/Simple-backgrounds-for-desktop-download.jpg')
            ,fit:BoxFit.cover ),
          color: data.color,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: CircleAvatar(
          radius: 40,
        backgroundImage:NetworkImage(data.image)),
    ),
      InformationBlock(data: data,),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Icon(Icons.more_horiz_outlined,
              size: 35,color: Colors.white.withOpacity(0.8),),
            ),
           const Spacer(flex: 1,),
            SizedBox(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data.rank,
                    style: TextStyle(fontSize: 25,color: Colors.white.withOpacity(0.8)),),//Todo: Rank Number
                  Text('Ranking',
                    style: TextStyle(fontSize:15,color: Colors.white.withOpacity(0.8)),)
                ],
              ),
            ),
            const Spacer(flex: 2,),

          ],
        )

      ],
        ),
    );
  }
}
