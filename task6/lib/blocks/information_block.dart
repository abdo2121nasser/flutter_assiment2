import 'package:flutter/material.dart';
import 'package:task6/models/card_data_model.dart';


class InformationBlock extends StatelessWidget {
  InformationBlock({required this.data});
  CardModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,height: 130,
      decoration:const BoxDecoration(color: Colors.transparent),
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data.text1,
                        style:TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.8)) ,),
                      Text(data.text2,
                        style:TextStyle(fontSize: 14,color: Colors.white.withOpacity(0.8)) ,),
                    ],
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: SizedBox(
                width: 200,height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('2342',
                          style:TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.8)) ,),
                        Text('Productivity',
                          style:TextStyle(fontSize: 10,color: Colors.white.withOpacity(0.6)) ,),
                      ],
                    ),
                    Column(
                      children: [
                        Text('2342',
                          style:TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.8)) ,),
                        Text('Like',
                          style:TextStyle(fontSize: 10,color: Colors.white.withOpacity(0.6)) ,),
                      ],
                    ),
                    Column(
                      children: [
                        Text('2342',
                          style:TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.8)) ,),
                        Text('Followed',
                          style:TextStyle(fontSize: 10,color: Colors.white.withOpacity(0.6)) ,),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
