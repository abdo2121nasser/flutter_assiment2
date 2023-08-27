import 'package:flutter/material.dart';
import 'package:task1/screens/appointement.dart';
import 'package:task1/screens/my_account.dart';
import 'package:task1/screens/patiant_account.dart';

void main() {
  runApp(Taske());
}
class Taske extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          Appointement.id : (context) => Appointement(),
          MyAccount.id : (context) =>  MyAccount(),
          PatiantAccount.id : (context) =>   PatiantAccount(name: 'dkdldlddl',temp: '025 2',)
        },
        initialRoute:Appointement.id,
      debugShowCheckedModeBanner: false,
      home: Appointement(),
    );
  }
}
