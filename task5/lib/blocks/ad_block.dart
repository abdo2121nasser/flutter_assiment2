import 'package:flutter/material.dart';


class AdBlock extends StatelessWidget {
  const AdBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      width: double.infinity,height: 50,
      decoration: BoxDecoration(
         color: Colors.grey.shade300,
             borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Image.asset('lib/assets/Annotation 2023-08-29 111920.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            const  SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('Verify Art Profile',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text('11r',
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.grey),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text('Now Ort piece profite require your verification',
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
              ),
            ],
          )
        ],
      ),
    );
  }
}
