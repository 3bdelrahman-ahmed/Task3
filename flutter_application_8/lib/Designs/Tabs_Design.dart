// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';


class TabsDesign extends StatelessWidget{
late String text;
  TabsDesign(String text){
    this.text=text;
  }
  @override
  Widget build(BuildContext context) {
   return Text(this.text);
  }
}