import 'package:flutter/material.dart';
 class InformationBlock extends StatelessWidget {
   const InformationBlock({super.key});

   @override
   Widget build(BuildContext context) {
     return SizedBox(
        height: 210,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           const CircleAvatar(radius: 50,backgroundColor: Colors.brown,
              child: Stack(
                children: [
                  Icon(Icons.person,size: 90,color: Colors.white,),
                  Positioned(right: 0,bottom:0,
                    child: CircleAvatar(radius: 15,backgroundColor: Colors.yellow,
                      child: Icon(Icons.edit,size: 20,color: Colors.white,)
                    )
                  ),
                ],
              ),
            ),
           const Text('Nicolas Adams',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
            Text('nicolasadams@gmail.com',
              style: TextStyle(fontSize: 15,color: Colors.grey.shade600,),),
           const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              height: 32,width: 150,
              decoration: BoxDecoration(color: Colors.yellow[700],borderRadius: BorderRadius.circular(30)
              ),

              child:const Text('Upgrade to PRO',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
     )

          ],
        )

     );
   }
 }

