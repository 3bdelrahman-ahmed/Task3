// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use


import 'package:flutter/material.dart';
import 'package:flutter_application_8/Designs/Container_designs.dart';
import 'package:flutter_application_8/Designs/Tabs_Design.dart';


class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
     child: Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        //brightness: Brightness.dark,
        shadowColor: Colors.deepPurple,
        backgroundColor: Colors.deepPurple[400],
        title: Icon(Icons.arrow_back),
        bottom:TabBar(
          isScrollable: true,
         indicatorColor: Colors.white,
         indicatorWeight:3 ,
          indicatorPadding: EdgeInsets.only(left: 15,right:10),
          tabs:
          [
            Tab(
              child: Text('Designer',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Tab(
              height: 50,
              child: Text('Category',
               style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Tab(
              child: Text('Attention',
               style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
            )
          ]
           ),
      ),
     body:  
     ListView(
      children: [
        Column(
          children: [
  ContaiinerDesign(Color.fromARGB(255, 115, 184, 240),AssetImage('assets/messi.jpg'),'Lionel Messi','Title : Flying wings','32','43779','546','1'),
  ContaiinerDesign(Color.fromARGB(255, 240, 174, 75),AssetImage('assets/rash.jpg'),'Rashford','Title : Flying wings','32','43779','546','2'),
  ContaiinerDesign(Colors.pink,AssetImage('assets/salah.jpg'),'Mo Salah','Title : Flying wings','32','43779','546','3'),
  ContaiinerDesign(Colors.purple,AssetImage('assets/harry.jpg'),'Harry Kane','Title : Flying wings','32','43779','546','4'),
  ContaiinerDesign(Colors.green,AssetImage('assets/cr7.jpg'),'CR7','Title : Flying wings','32','43779','546','5'),
          ],
        )
     ],)
     ),
     );
  }
}