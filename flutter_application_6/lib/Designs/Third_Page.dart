import 'package:flutter/material.dart';

class ThirdPageContainer extends StatelessWidget{
  late Color color;
  late String text;
  late double top;
  late double left;
  late double left2;
  ThirdPageContainer(  Color color,String text,double top,double left,double left2)
  {
    this.color=color;
    this.left=left;
    this.top=top;
    this.text=text;
    this.left2=left2;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:this.top,left: this.left),
                width:170,
                height:70,
                decoration: BoxDecoration(
                  color: this.color,
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(15),right: Radius.circular(15))
                ),
                child: TextButton(onPressed: () {
                  Null;
                }, 
                child:
                Container(
                  margin: EdgeInsets.only(left: this.left2),
                  child: Text(this.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                )
                ),
               
    );
  }
}