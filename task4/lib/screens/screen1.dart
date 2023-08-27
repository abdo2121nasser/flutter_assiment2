
import 'package:flutter/material.dart';
import 'package:task4/blocks/list_block.dart';

import '../models/list_data_model.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF6F7F9),
     appBar: AppBar(
       elevation: 2,
        toolbarHeight:90,
       backgroundColor: Colors.white,
       centerTitle: true,
       title: Image.asset('lib/assets/Annotation 2023-08-28 000639.png'),
     ),
      body: SizedBox(
        width: 400,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
                child: Text('Choose your area',
                style: TextStyle(fontSize: 25,color: Colors.grey.shade600,fontWeight:FontWeight.bold),),
              ),
            ),
            SizedBox(
              width: 360,height: 450,
              child: GridView.builder(
               gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   // mainAxisExtent: 140,
                   crossAxisSpacing:10,
                   childAspectRatio: (1/.8),
               mainAxisSpacing: 15),
               itemBuilder: (_, index) => GestureDetector(onTap: ()
               {
                setState(() {
                  data[ListModel.index].flage=false;
                  ListModel.index=index;
                  data[index].flage=true;
                });
               },
                   child: ListBlock(data: data[index])),
                 itemCount: data.length,
),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items:const [
           BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,size: 30),
             label: ''
          ),
          BottomNavigationBarItem(
              icon:  Icon(Icons.file_open_outlined,size: 30),
              label: ''
          ),
          BottomNavigationBarItem(
              icon:  Icon(Icons.chat,size: 30),
              label: ''
          ),
          BottomNavigationBarItem(
              icon:  Icon(Icons.search,size: 30),
              label: ''
          ),
          BottomNavigationBarItem(
              icon:  Icon(Icons.person,size: 30),
              label: ''
          ),
        ],
      ),
    );
  }
}
