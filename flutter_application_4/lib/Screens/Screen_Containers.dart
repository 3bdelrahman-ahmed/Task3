// ignore_for_file: prefer_initializing_formals, use_key_in_widget_constructors, prefer_const_constructors, unnecessary_this, must_be_immutable, duplicate_ignore

import 'package:flutter/material.dart';

class ScreenContainers extends StatelessWidget{
  late IconData icon;
  late String text;
  late bool icoon;
  ScreenContainers(IconData icon,String text,bool icoon){
      this.icon=icon;
      this.icoon=icoon;
      this.text=text;
  }
  
  @override
  Widget build(BuildContext context) {
   return Container(
    margin: EdgeInsets.only(top:16),
        width: 330,
        height: 50,
        decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.horizontal(left: Radius.circular(80),right: Radius.circular(80))
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: 
             Icon(this.icon,
            color: Colors.white,
            size: 25,
            ),
            ),
            Expanded(
              flex: 4,
              child: 
            Text(this.text,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            ),
            ),
            if(icoon)
            Expanded(
              flex: 1,
              child: 
              Container(alignment: Alignment.centerLeft,
              child:
            Icon(Icons.arrow_forward_ios,
            color: Colors.white,
            size: 25,
            weight: 0.7,
              )  )
            )
           ],
        ),
   );
  }
}