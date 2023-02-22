// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_8/Designs/Coluomns.dart';

class ContaiinerDesign extends StatelessWidget{
  late Color color;
  late AssetImage image;
  late String text1;
  late String text2;
  late String text3;
  late String text4;
  late String text5;
  late String text6;
 
  ContaiinerDesign(Color color,AssetImage image,String text1,String text2,String text3,String text4,String text5,String text6){
    this.color=color;
    this.image=image;
    this.text1=text1;
    this.text2=text2;
    this.text3=text3;
    this.text4=text4;
    this.text5=text5;
    this.text6=text6;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top:20),
      padding: EdgeInsets.only(left: 15,right: 15),
      width: 350,
      height: 170,
      decoration: BoxDecoration(
         color: this.color,
         borderRadius: BorderRadius.horizontal(left: Radius.circular(30),right: Radius.circular(30))
      ),
      alignment: Alignment.topLeft,
      child:Row(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:15),
                child: CircleAvatar(
                  backgroundImage: this.image,
                  radius: 40,
                ),
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30,left:10),
                  child: Text(this.text1,
                    style: 
                    TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0),
                    child: Text(this.text2,
                     style: 
                    TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                 ColumnDesign(this.text3, 'Test'),
                 SizedBox(width: 5,),
                 ColumnDesign(this.text4, 'Likes'),
                 SizedBox(width: 5,),
                 ColumnDesign(this.text5, 'Test'),
                ],
              )
            ],
          ),
          SizedBox(width: 15,),
          Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top:20,left: 10),
                  child: Column(
                    children: [
                      Icon(Icons.edit_attributes,
                      color: Colors.white,
                      ),
                      SizedBox(height: 23,),
                      Text(this.text6,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                      ),
                      SizedBox(height: 5,),
                      Text('Ranking',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                      )
                    ],
                  )
                  )
              ],
          ),
        ],
      )
     );
  }
}