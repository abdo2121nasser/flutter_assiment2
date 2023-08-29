import 'package:flutter/material.dart';
import 'package:task5/blocks/upper_container.dart';


class UpperDsignBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('lib/assets/UDGKT3.jpg',
        cacheHeight: 450,
          cacheWidth: 500,
        ),
        Column(
          children: [
           const Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding:  EdgeInsets.only(top: 10,left: 10),
                  child:   Icon(Icons.settings,size: 30,color: Colors.white,),
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: SizedBox(
                height: 180,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   const  CircleAvatar(radius: 50,backgroundColor: Colors.white,
                      child: Icon(Icons.person,
                        color:Colors.brown,size: 90 ,)
                    ),
                    const Text('Mary Smith',
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     const   Icon(Icons.message_sharp,color: Colors.deepPurple,),
                        Text(' SMS: 415-555-1212',
                          style: TextStyle(fontSize: 15,color: Colors.grey.shade600,),),
                      ],
                    ),

                  ],
                )

      ),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               UpperContainer(upperText: '2',lowerText: 'Unclaimed',color: Colors.deepPurple.shade600),
               UpperContainer(upperText: '\$2,880',lowerText: 'Monthly Earn',color: Colors.black87),
             ],
           )
          ],
        ),
  ]
    );
  }
}
