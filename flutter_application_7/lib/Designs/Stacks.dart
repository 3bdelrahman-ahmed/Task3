import 'package:flutter/material.dart';

class StacksDesign extends StatelessWidget{
  late Color color;
  late String text;
  late String text2;
  late AssetImage image;
  StacksDesign(Color color,String text,String text2,AssetImage image){
    this.text=text;
    this.color=color;
    this.text2=text2;
    this.image=image;
  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Stack(
      children: [
        Container(
          width: 180,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(40),right: Radius.circular(40)),
            color: this.color,
            image: DecorationImage(image: this.image,
            opacity: 0.2,
            fit: BoxFit.cover,
            )
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:30),
                child: Text(this.text,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
              SizedBox(height: 5,),
              Text(this.text2,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
            ],
          ),
        )
      ],
    );
  }
}