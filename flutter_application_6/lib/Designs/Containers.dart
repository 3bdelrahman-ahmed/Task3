// ignore_for_file: prefer_const_constructors, prefer_initializing_formals, use_key_in_widget_constructors, must_be_immutable, unnecessary_this

import 'dart:ffi';

import 'package:flutter/material.dart';

class ContainerDesign extends StatelessWidget{
   late IconData icon;
    late String textName;
    late String textClock;
   late  bool icon1Test;
   late bool icon2Test;

   ContainerDesign(IconData icon,String textName,String textClock,bool icon1Test,bool icon2Test){
      this.icon=icon;
      this.textName=textName;
      this.textClock=textClock;
      this.icon1Test=icon1Test;
      this.icon2Test=icon2Test;
    }
  @override
  Widget build(BuildContext context) {
   return Container(
    margin: EdgeInsets.only(top:13,left: 25),
    width: double.infinity,
    height: 75,
    alignment: Alignment.topLeft,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        
          Text(
            this.textName,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Colors.grey[700]
        ),
        ),
          SizedBox(height: 10,),
         Row(
          children: [
            Expanded(
              flex: 1,
              child:
             Icon(this.icon,
            color: Colors.grey[600],
            ), 
            ),
            Expanded
            (
              flex: 10,
              child:  Text(this.textClock,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w800,
              color: Colors.grey[600]
            ),
            ))
           ,
            if(icon1Test)
            Expanded(
              flex: 1,
              child: 
            Icon(Icons.one_x_mobiledata_outlined,
            size: 30,
            color: Colors.red,
            ),),
            if(icon2Test)
            Expanded(
              flex: 1,
              child: Icon(Icons.done_all_outlined,
              size: 30,
            color: Colors.blue[800],
            ), ),
          ],
        ),
        Divider(
          height: 8,
          thickness:0.8 ,
          endIndent: 15,
          indent: 5,
          color: Colors.grey[600],
        )
      ],
    ),
   );
  }
}