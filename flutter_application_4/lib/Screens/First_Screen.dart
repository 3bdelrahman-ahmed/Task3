// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_4/Screens/Screen_Containers.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: 
      Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(
          margin: EdgeInsets.only(top:20,left: 15),
          child: Row(
            children: [
               Icon(Icons.arrow_back_outlined,
               color: Colors.white,
               size: 25,
               ),
               SizedBox(width: 320,),
               Icon(Icons.wb_sunny_outlined,
          color: Colors.white,
          size: 30,
          weight: 0.5,
          )
            ],
          ),
         ),
         Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/me.jpg',),
            radius: 60,
            child:Container(alignment: Alignment.bottomRight,
              child:Icon(Icons.edit_outlined,
              color: Colors.yellow[900],
              size: 30,
              ) ,
            )
            ),
            SizedBox(height: 13,),
            Text('Abdelrahman Ahmed',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text('Abdelrahman@gmail.com',
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 20,),
            Container(alignment: Alignment.center,
              width: 200,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.amber[700],
              borderRadius: BorderRadius.horizontal(left: Radius.circular(100),right: Radius.circular(100))
              ),
              child: Text('Upgrade to PRO',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              ),
            ),
            ScreenContainers(Icons.privacy_tip_outlined, 'Privacy', true),
            ScreenContainers(Icons.history_outlined, 'Pruchers History', true),
            ScreenContainers(Icons.help_outline, 'Help & Support', true),
            ScreenContainers(Icons.settings, 'Settings', true),
            ScreenContainers(Icons.mobile_friendly_rounded, 'Invite a Friend', true),
            ScreenContainers(Icons.logout_outlined, 'Logout', false)
          ],
         )
        ],
      )
      ,
    );
  }
}