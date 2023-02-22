// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, unnecessary_new

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/Designs/Stars.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Container(alignment: Alignment.topLeft,
                width: double.infinity,
                height: 330,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/alarm2.jpg'),
                  opacity:0.9,
                  repeat: ImageRepeat.repeat,
                  scale: 0.5,
                //  colorFilter: ColorFilter.mode(Colors.pink, BlendMode.exclusion)
                  ),
                  color: Color.fromARGB(255, 205, 154, 170),
                  borderRadius: BorderRadius.all(Radius.elliptical(25, 25)),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:15,left: 20),
                      child: Icon(Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                      )
                    ),
                    SizedBox(width: 310,),
                    Container(
                      margin: EdgeInsets.only(top:15),
                      child: Icon(Icons.favorite,
                      color: Colors.white,
                      size: 30,
                      ),
                    ),
                  ],
                ),
            ),
           DotsIndicator(dotsCount: 4,
              decorator: DotsDecorator(
                color: Colors.black,
                activeColor: Colors.pink,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
           ),
           SizedBox(height: 20,),
           Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                flex: 5,
                child: 
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('C2 Analog Colock',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
                ),
              )
              ),
            
              Expanded(
                flex: 1,
                child: 
             Text('\$542',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                color: Colors.pink[300],
              ),
              )
              )
            ],
           ),
           SizedBox(height: 10,),
           Row(
              children: [
                SizedBox(width: 20,),
                StarsDesign(Colors.yellow),
                StarsDesign(Colors.yellow),
                StarsDesign(Colors.yellow),
                StarsDesign(Colors.yellow),
                StarsDesign(Colors.grey),
                SizedBox(width: 7),
                Text('4/5 (12)',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                )
              ],
           ),
           SizedBox(height: 20,),
           Container(
            margin: EdgeInsets.only(left: 20),
             child: Text(
              'Great analog clock designed spicially for your home bed room,,,XD',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),
             ),
           ),
           SizedBox(height: 30,),
           Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(width:20 ),
              Text('Type',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
              ),
              SizedBox(width: 60,),
              Text('Material',
               style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
              )
            ],
           ),
           Row(
            children: [
              Container (
                margin: EdgeInsets.only(top:8,left: 20),
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 170, 193),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(13),bottomLeft: Radius.circular(13),bottomRight: Radius.circular(13),topRight: Radius.circular(13))
                ),
                alignment: Alignment.center,
                child: Text('Analog',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.pink[400],
                  fontWeight: FontWeight.w700
                ),
                ),
              ),
               Container (
                margin: EdgeInsets.only(top:8,left: 20),
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 170, 193),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(13),bottomLeft: Radius.circular(13),bottomRight: Radius.circular(13),topRight: Radius.circular(13))
                ),
                alignment: Alignment.center,
                child: Text('Plastic',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.pink[400],
                  fontWeight: FontWeight.w700
                ),
                ),
              )
            ],
           ),
           SizedBox(height: 30,),
           Container(
            width: 320,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),topRight: Radius.circular(25))           
               ),
               alignment: Alignment.center,
               child: Text('Add to Cart',
               style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w700,
               ),
               ),
           )

        ]
           )

      );
    
  }
}