
import 'package:flutter/material.dart';
import 'package:task5/blocks/ad_block.dart';
import 'package:task5/blocks/gallery_block.dart';
import 'package:task5/blocks/information_block.dart';

import '../models/Gallery_block_list_model.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        UpperDsignBlock(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             const Text('Action Required',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Container(
                alignment: Alignment.center,
                width: 30,height: 30,
                decoration: BoxDecoration(color: Colors.deepPurple.shade900,borderRadius: BorderRadius.circular(50)),
                child:const Text('18',
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
              )
            ],
          ),
        ),
      const AdBlock(),
     const   Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text('Gallery',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
               Text('See all',
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey))
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            width: 330,height: 350,
            child: GridView.builder(
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // mainAxisExtent: 140,
                  crossAxisSpacing:10,
                //  childAspectRatio: (1/.1),
                  mainAxisSpacing: 0),
              itemBuilder: (_, index) => GallaryBlock(data: data[index]),
              itemCount: data.length,
            ),
          ),
        )

      ],
    ),

    );
  }
}
