import 'package:flutter/material.dart';



class ImageBlock extends StatelessWidget {
  String icon='https://th.bing.com/th/id/OIP.E3ZC6as0ibJctkQj3SuBXAHaHa';
  String image='lib/assets/alarm-pink-background-pastel-minimalism-copy-space-alarm-pink-background-pastel-minimalism-120281525.webp';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Stack(
            children:[
              ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(image,
                cacheHeight: 400,
                cacheWidth:450,

              ),
            ),
              Row(
                children: [
                 const Spacer(flex: 1,),
                  const Icon(Icons.arrow_back,color: Colors.white,size: 30,),
                 const Spacer(flex:10,),
                  Image.network(icon,cacheWidth: 50,cacheHeight: 50,),
                 const Spacer(flex: 1,),

                ],
              )
            ],
          ),
           Image.asset('lib/assets/Annotation 2023-08-27 194446.png')
        ],
      ),
    );
  }
}
