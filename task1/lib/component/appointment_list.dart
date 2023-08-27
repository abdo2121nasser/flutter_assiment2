import 'package:flutter/material.dart';
import 'package:task1/models/patiant_data_model.dart';

class AppointmentList extends StatelessWidget {
   AppointmentList({required this.pation});
  PatiantInformation pation;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 30),
      color: Colors.white30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(pation.name,style: const TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                   const Icon(Icons.access_alarm,size: 20,),
                    Text(pation.time,style:const TextStyle(fontSize: 15)),

                  ],
                ),
              ),
              Divider(thickness: 3,height: 10,color: Colors.blueGrey[100],)
            ],
          ),
          IconButton(onPressed: (){}, icon: pation.hasiIcon? pation.icon? Icon(Icons.done_all,color: Colors.cyan,) : Icon(Icons.cancel_outlined,color: Colors.red) : Icon(Icons.space_bar,color: Colors.white30,))
        ],
      ),
    );
  }
}
