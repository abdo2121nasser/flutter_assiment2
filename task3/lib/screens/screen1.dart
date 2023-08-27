import 'package:flutter/material.dart';
import 'package:task3/blocks/image_block.dart';
import 'package:task3/blocks/information_block.dart';


class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
         body: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             ImageBlock(),
           const InformationBlock(),
             Text('A classically designed analog clock that would add\n'
                 'to the decor of your house. Analog clock has hour\n'
                 'minutes and secound hands',
             style: TextStyle(fontSize:15,color: Colors.grey.shade500),),
             Row(
               children: [
                const SizedBox(width: 30,),
                 Column(
                   children: [
                     Text('Type',
                       style: TextStyle(fontSize: 15,color: Colors.grey.shade500),
                     ),
                     Container(
                       margin: const EdgeInsets.all(10),
                       alignment: Alignment.center,
                       width: 60,height: 30,
                       decoration: BoxDecoration(
                         color: Colors.pinkAccent[100],
                         borderRadius: BorderRadius.circular(10)
                       ),
                       child: Text('Analog',
                       style: TextStyle(color: Colors.pink[800]),),
                     )
                   ],
                 ),
                 Column(
                   children: [
                     Text('Material',
                       style: TextStyle(fontSize: 15,color: Colors.grey.shade500),
                     ),
                     Container(
                       margin: const EdgeInsets.all(10),
                       alignment: Alignment.center,
                       width: 60,height: 30,
                       decoration: BoxDecoration(
                           color: Colors.pinkAccent[100],
                           borderRadius: BorderRadius.circular(10)
                       ),
                       child: Text('Plastic',
                         style: TextStyle(color: Colors.pink[800]),),
                     )
                   ],
                 ),
               ],
             ),
             Container(
               height: 70,width: 300,
               alignment: Alignment.center,
               decoration: BoxDecoration(color: Colors.black87,borderRadius: BorderRadius.circular(20)),
               child:const Text('Add to cart',
                 style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
             )
           ],
         ),
    );
  }
}
