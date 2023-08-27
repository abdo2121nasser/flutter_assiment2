import 'package:flutter/material.dart';
import 'package:task2/models/optton_list.dart';


class OptionBlock extends StatelessWidget {
  OptionBlock({required this.data});
  OptionList data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.only(left: 40,right: 40,bottom: 15),
      decoration: BoxDecoration(color: Colors.grey.shade700,borderRadius: BorderRadius.circular(50)),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(data.icon,
            size: 22,color: Colors.white,),
        const  SizedBox(width: 10,),
          Text(data.name,
            style: const TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
         const Spacer(flex: 1,),
          Icon(Icons.arrow_forward_ios,
            size: 22,color:data.flage? Colors.white :Colors.transparent,),


        ],
      ),
    );
  }
}
