import 'package:flutter/material.dart';


class UpperContainer extends StatelessWidget {
    UpperContainer({required this.upperText,required this.lowerText,required this.color});
    String upperText,lowerText;
    Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,height: 100,
      decoration: BoxDecoration(color: color.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(upperText,style: TextStyle(fontSize: 28,color: Colors.white.withOpacity(0.7)),),
          Text(lowerText ,style: TextStyle(fontSize: 18,color: Colors.grey.withOpacity(0.7))),
        ],
      ),
    );
  }
}
