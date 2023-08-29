import 'package:flutter/material.dart';
import 'package:task6/models/card_data_model.dart';

import '../blocks/designer_container_block.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom:  TabBar(
            indicatorColor: Colors.white,
            indicatorSize:TabBarIndicatorSize.label,
            labelPadding: const EdgeInsets.only(bottom: 10,left: 25),

            tabs:[
              Tab(
                child:Text('Designer',
                style: TextStyle(fontSize: 25,color: Colors.white.withOpacity(0.9)),)
              ),
             const Tab(
                child:Text('Category',
                  style: TextStyle(fontSize: 15),) ,
              ),
             const Tab(
                child:Text('Attention',
                  style: TextStyle(fontSize: 15),) ,
              ),
            ],
          ),
          elevation: 0,
          leading: Icon(Icons.arrow_back,
            color:Colors.white.withOpacity(0.7),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.purpleAccent,Colors.purple.shade600.withOpacity(0.8)]
                )
            ),
          ),
        ),
        endDrawer: const Drawer(),
        body:  SizedBox(

          child:  ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return DesignerContainerBlock(data: data[index]);
              }),
        ),
        ),
    );
  }
}