import 'package:flutter/material.dart';
import 'package:task1/models/my_account_information_model.dart';

class MyAccountList extends StatelessWidget {
 MyAccountList({required this.information});
 final PersonalInformation information;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
        const  SizedBox(width: 40,height: 40,),
            Icon(information.icon),
         const SizedBox(width: 20,),

          Text(information.data,style: const TextStyle(fontSize: 20,color: Colors.grey,),),
        ],
      ),
    );
  }
}
