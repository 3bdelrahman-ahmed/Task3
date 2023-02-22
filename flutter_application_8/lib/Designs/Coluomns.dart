import 'package:flutter/material.dart';

class ColumnDesign extends StatelessWidget{
  late String text;
  late String text2;
  ColumnDesign(String text,String text2){
    this.text=text;
    this.text2=text2;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(this.text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        ),
        SizedBox(height: 5,),
        Text(this.text2,
         style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        )
      ],
    );
  }
}