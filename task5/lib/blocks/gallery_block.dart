import 'package:flutter/material.dart';
import 'package:task5/models/Gallery_block_list_model.dart';

class GallaryBlock extends StatelessWidget {
  GalleryList data;
  GallaryBlock({required this.data});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,height: 160,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(data.image,
                  cacheWidth: 160,
                  cacheHeight: 83,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(data.text1,
            style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 5),
            child: Text(data.text2,
              style:const TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
          ),
         Container(
           alignment: Alignment.center,
           margin:const EdgeInsets.only(left: 15,top: 10,bottom: 5),
           width: 130,height: 25,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(20)
          ),
           child: const Text('Buy Now',
           style: TextStyle(
             fontSize: 15,color: Colors.white
           ),),
         )

        ],
      ),
    );
  }
}
