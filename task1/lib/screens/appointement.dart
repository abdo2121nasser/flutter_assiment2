
import 'package:flutter/material.dart';
import 'package:task1/screens/my_account.dart';
import 'package:task1/screens/patiant_account.dart';

import '../component/appointment_list.dart';
import '../models/patiant_data_model.dart';


class Appointement extends StatelessWidget {
   Appointement({super.key});
   static String id='Appointment';
   Map<int, String> weekdayName = {2: "Monday", 3: "Tuesday", 4: "Wednesday", 5: "Thursday", 6: "Friday", 7: "Saturday", 8: "Sunday"};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    appBar: AppBar(
      backgroundColor: const Color(0xff18A7D1),
      title: const Text('Appointement'),
      titleSpacing: 0,
      leading: Image.asset('lib/assets/Annotation 2023-08-26 171348.png'),
    ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const  SizedBox(height: 20,),
          Text('${weekdayName[DateTime.daysPerWeek]}, ${DateTime.now().day}/ ${DateTime.now().month} /${DateTime.now().year}',
            style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold), ),
         const SizedBox(height: 30,),
          Expanded(
            child: ListView.builder(
                itemCount: pation.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PatiantAccount(name: pation[index].name,temp: pation[index].time,)));
                  },
                      child: AppointmentList(pation: pation[index])
                  );
                }),
          )


        ],
      ),

    );
  }
}
//18A7D1