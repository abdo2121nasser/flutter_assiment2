import 'package:flutter/material.dart';
import 'package:task1/models/patiant_account_data_model.dart';

import '../component/patiant_account-list.dart';
import 'my_account.dart';
String time='';
class PatiantAccount extends StatelessWidget {
  static String id='Patiant id';
  String name='',temp='';
  PatiantAccount({this.name='', this.temp='',});


  @override
  Widget build(BuildContext context) {
    time=temp;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff18A7D1),
        title: const Text('Patiant Account'),
        titleSpacing: 0,
        leading: Image.asset('lib/assets/Annotation 2023-08-26 171348.png'),
      ),
      endDrawer: Drawer(
          child: ListView(
              children:  [
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('My Account'),
                  onTap: (){
                    Navigator.pushNamed(context, MyAccount.id);
                  },
                ),
              ]
          )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
                child: CircleAvatar(radius: 58,
                    backgroundColor: Colors.white,
                    child: Image.asset('lib/assets/personal-accident-insurance-icon.png',width: 90,height: 90,)),
              ),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(name,style:const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                    ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary:  const Color(0xff18A7D1)
                      ),
                        child:const Text('MEDICAL HISTORY',style: TextStyle(fontSize: 15),),
                    )
                  ],
                ),
              )
              
            ],
          ),
          SizedBox(
            height: 200,
            child:  ListView.builder(
                itemCount: patiantiformation.length,
                itemBuilder: (BuildContext context, int index) {
                  return PatiantAccountlist(information: patiantiformation[index],);
                }),
          ),
          SizedBox(
            height: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        fixedSize:const Size(160, 60),
                        alignment: Alignment.center,
                        primary: const Color(0xff18A7D1),
                      ),
                        child: const Text('       START PROCEDURES',style: TextStyle(fontSize: 20),),
                    ),
                    ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(160, 60),
                        alignment: Alignment.center,
                        primary:  Colors.grey,
                      ),
                      child: const Text('EDIT',style: TextStyle(fontSize: 20),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){Navigator.of(context).pop();},
                      style: ElevatedButton.styleFrom(
                        fixedSize:const Size(160, 60),
                        alignment: Alignment.center,
                        primary: const Color(0xff18A7D1),
                      ),
                      child: const Text('BACK',style: TextStyle(fontSize: 20),),
                    ),
                    ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(160, 60),
                        alignment: Alignment.center,
                        primary: const  Color(0xff18A7D1),
                      ),
                      child: const Text('PATIENT\nMISSING',style: TextStyle(fontSize: 20,),),
                    ),
                  ],
                ),
              ],
            ),
          )

        ],
      ),

    );
  }
}
