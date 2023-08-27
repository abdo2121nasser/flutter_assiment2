import 'package:flutter/material.dart';
import 'package:task2/blocks/information_block.dart';

import '../blocks/option_block.dart';
import '../models/optton_list.dart';



class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black87 ,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: const Icon(Icons.arrow_back,size: 30,),
        elevation: 0,
        actions: const [
         Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(Icons.wb_sunny_outlined,size: 30,),
          ),
        ],

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const InformationBlock(),
         const SizedBox(height: 20,),
          SizedBox(
            height: 360,
            child:  ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return OptionBlock(data: data[index]);
                }),
          ),
        ],
      ),

    );
  }
}
