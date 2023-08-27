import 'package:flutter/material.dart';
import 'package:task1/component/my_account_information_list.dart';
import 'package:task1/models/my_account_information_model.dart';
import 'package:task1/screens/appointement.dart';

class MyAccount extends StatelessWidget {
   static String id='My Account';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff18A7D1),
        title: const Text('My Account'),
        titleSpacing: 0,
        leading: Image.asset('lib/assets/Annotation 2023-08-26 171348.png'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              CircleAvatar(radius: 50,
                child: Image.asset('lib/assets/Annotation 2023-08-27 003216.png',width: 150,height: 150,),
              ),
              const Text('Maria Ioana Leonte',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              const Text('HCP Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
            ],
          ),
          SizedBox(
            height: 150,
            child:  ListView.builder(
                itemCount: information.length,
                itemBuilder: (BuildContext context, int index) {
                  return MyAccountList(information: information[index]);
                }),
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          },
            style: ElevatedButton.styleFrom(
              primary:const Color(0xff18A7D1),
              fixedSize:const Size(150, 50)
            ),
              child: const Text('Back',style: TextStyle(fontSize: 20),),
          )
        ],
      ),
    );
  }
}
