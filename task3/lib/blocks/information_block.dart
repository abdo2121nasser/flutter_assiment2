import 'package:flutter/material.dart';


class InformationBlock extends StatelessWidget {
  const InformationBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('C2 Analog Clock',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('\$542',
                style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.pinkAccent),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32,top: 10),
            child: Image.asset('lib/assets/Annotation 2023-08-27 200034.png'),
          ),
        ],
      ),
    );
  }
}
