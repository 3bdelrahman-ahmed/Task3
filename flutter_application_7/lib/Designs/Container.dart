// ignore_for_file: prefer_const_constructors, unnecessary_this, prefer_initializing_formals, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';


class ContainersDesigns extends StatelessWidget{
  late AssetImage image;
  late String text;
  late String text2;
  ContainersDesigns(AssetImage image,String text,String text2){
    this.text=text;
    this.text2=text2;
    this.image=image;
  }
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Container(
      width: 165,
      height: 190,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 227, 219, 219),
        borderRadius: BorderRadius.vertical(top:Radius.circular(30),bottom: Radius.circular(30))
      ),
      child:Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:5),
            width: 155,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20))
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20)),
                image: DecorationImage(image: this.image,
                
                fit: BoxFit.cover
                )
              ),
            )
          ),
          SizedBox(height: 5,),
          Text(this.text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 3,),
          Text(this.text2,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 6,),
          Container(
            width: 150,
            height: 30,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 12, 29, 43),
              borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20))
            ),
            alignment: Alignment.center,
            child: Text('Buy Now',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
          )
        ],
      ) ,
    );
  }
}