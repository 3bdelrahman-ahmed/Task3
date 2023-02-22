// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_6/Designs/MyAccount.dart';
import 'package:google_fonts/google_fonts.dart';

class MyaccontScreen extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:
     AppBar(
      title: 
      Row(
        children: [
        Image.asset('assets/logo.png',
          scale: 8,
          ),
           Text('Appointments',
           style:  
            GoogleFonts.acme(
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )
            )
           )  
        ],
      ),
    ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            CircleAvatar(
              backgroundImage: AssetImage('assets/me.jpg'),
              radius: 70,
            ),
            SizedBox(height: 15,),
            Text('Abdelrahman Ahmed',
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
              fontWeight: FontWeight.w700,
            ),
            ),
            Text('HCP',
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            ),
           SizedBox(height: 20,),
           MyaccountInfo(Icons.phone_android_outlined, '01151515807'),
           SizedBox(height: 20,),
           MyaccountInfo(Icons.alternate_email_outlined, 'Abdelrahmanahmed@gmain.com'),
           SizedBox(height: 20,),
           MyaccountInfo(Icons.business_center_outlined, 'elwarrak,Giza')
          ],
        ),
      ),
    );
  }
}