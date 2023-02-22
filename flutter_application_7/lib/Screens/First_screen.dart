// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_7/Designs/Container.dart';
import 'package:flutter_application_7/Designs/Stacks.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 168, 255),
      body: 
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/cover.jpg',),
          fit: BoxFit.cover,
          opacity: 0.7,
          )
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top:15,left: 10),
                child: Icon(Icons.settings_suggest_outlined,
                color: Colors.indigo,
                size: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:5,left: 155),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/tokyo.jpeg'),
                  radius: 50,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 168),
                child: Text('TOKYO',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 140),
                  child: Row(
                    children: [
                      Icon(Icons.sms_outlined,
                      color: Colors.indigo,
                      ),
                      SizedBox(width: 5,),
                      Text('SMS : 001 -748 -931',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ),
                      )
                    ],
                  )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25,left: 20),
                    child: Row(
                      children: [
                        StacksDesign(Color.fromARGB(255, 171, 77, 243),'2','Unclaimed',AssetImage('assets/cover2.jpg')),
                        SizedBox(width: 15,),
                         StacksDesign(Color.fromARGB(255, 12, 32, 49),'\$2,880','Monthly Earn',AssetImage('assets/cover3.png')),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 10),
                    child: Row(
                      children: [
                        Text('Action Required',
                        style: 
                        TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        )
                        ),
                        SizedBox(width: 200,),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 18, 14, 52),
                            borderRadius: BorderRadius.circular(100)
                          ),
                          alignment: Alignment.center,
                          child: Text('18',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.only(left: 5,right: 5),
                    width: 405,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(30),right: Radius.circular(30))
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:10,left: 8),
                          child: Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 176, 240, 178),
                                  borderRadius: BorderRadius.circular(100)
                                ),
                                child: Icon(Icons.verified_user_outlined,
                                color: Colors.green,
                                size: 35,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text('Verify Art Profile',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                  ),
                                ),
                                SizedBox(width: 140,),
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: Text('11hr'))
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 200,top: 5),
                              child: Text('Expert',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              )),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    margin: EdgeInsets.only(left: 7),
                    child: Row(
                      children: [
                        Text('Gallery',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(width: 287,),
                        Text('See All',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5,left: 20),
                    child: Row(
                      children: [
                        ContainersDesigns(AssetImage('assets/cover2.jpg'), 'Colorfull Blood', 'Test'),
                        SizedBox(width: 35,),
                         ContainersDesigns(AssetImage('assets/cover3.png'), 'Colorfull Blood', 'Test')
                      ],
                    ),
                  )
            ],
          ),
      ),
      );
  }
}