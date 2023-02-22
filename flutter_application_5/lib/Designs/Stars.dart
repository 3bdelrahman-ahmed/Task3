import 'package:flutter/material.dart';

class StarsDesign extends StatelessWidget{
  late Color color;
  StarsDesign(Color color){
      this.color=color;
  }
  @override
  Widget build(BuildContext context) {
   return Icon(Icons.star,
   color: this.color
   );
  }
}