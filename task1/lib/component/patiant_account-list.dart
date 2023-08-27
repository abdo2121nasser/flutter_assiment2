import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../models/patiant_account_data_model.dart';


class PatiantAccountlist extends StatelessWidget {
  final PatiantAccountInformation information;

  PatiantAccountlist({required this.information});
  @override
  Widget build(BuildContext context) {
    String showData(IconData icon ,String data )
    {
      if(icon==Icons.phone_android) return'07531563134';
      else if(icon==Icons.location_on_sharp) return '48 Traian Streat, Building 51,\n Apartement 02 Brasov';
      else if(icon==Icons.file_open) return 'medical Test are performed to\n verify the state of health..';
     else return data;
    }
    return Container(
      child: Row(
        children: [
        const  SizedBox(width: 40,height: 50,),
          Icon(information.icon),
         const SizedBox(width: 20,),
          Text(showData(information.icon, information.data),style: const TextStyle(fontSize: 20,color: Colors.grey,),),
        ],
      ),
    );
  }
}
