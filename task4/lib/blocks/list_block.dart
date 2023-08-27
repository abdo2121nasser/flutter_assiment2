import 'package:flutter/material.dart';
import 'package:task4/models/list_data_model.dart';

class ListBlock extends StatelessWidget {
  ListBlock({required this.data});
    ListModel data;
  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      decoration: BoxDecoration(color: data.flage? Colors.deepPurple.shade500 : Colors.white
          ,borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(data.icon,
          color: /*Colors.white*/ data.flage? Colors.white : Colors.deepPurple.shade500,size: 50,),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(data.name,
            style:  TextStyle(fontSize: 15,color: data.flage ?Colors.white : Colors.grey ,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
