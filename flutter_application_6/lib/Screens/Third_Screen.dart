// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_6/Designs/MyAccount.dart';
import 'package:flutter_application_6/Designs/Third_Page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Second_Screen.dart';

class MohmedScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:  Drawer(
    backgroundColor: Colors.blueGrey[200],
    width: 280,
    child: ListView(
      children: [
        Column(
          children: [
            DrawerHeader(margin: EdgeInsets.all(20),
          decoration:BoxDecoration(
            image: DecorationImage(
             fit: BoxFit.fill,
              opacity: 0.3,
              image: AssetImage('assets/cover.jpg',)),
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.orange,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),
            color: Colors.deepPurple,
            borderRadius: BorderRadius.all(Radius.circular(30))
          ) , 
          child: Center(
             child: Text('Need Help ?',
                style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
          ),
            ),
                ),
              )
              ),
              Divider(
                color: Colors.black,
                height: 10, 
              ),
              SizedBox(height: 25,),
                TextButton(
                  style:
                  ButtonStyle(
                    alignment: Alignment.center,
                  ) ,
                 child:Row(
                   children: [
                    Expanded
                    (
                      flex: 1,
                      child:  Icon(Icons.account_circle_outlined,
                    color: Colors.black,
                    ),),
                    Expanded(
                      flex: 3,
                      child: 
                     Text('My Account',
                     style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                     ),
                     ),
                    )
                   ],
                 ),
                 onPressed: () {
          Navigator.push(
              context,
             MaterialPageRoute(builder: (context) =>  MyaccontScreen()),
                     );
                    }
                 )
          ],
        )
      ],
    ),
    ),
     appBar:
     AppBar(
      title: 
      Row(
        children: [
        Image.asset('assets/logo.png',
          scale: 8,
          ),
           Text('Patient Account',
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
    body: Column(
      children: [
        Row(
          children: [
            Container(alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top:30,left: 5),
              width: 150,
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/person.png'),
                radius: 100,
              ),
            ),
            Column(
              children: [
                Text('Mohamed',
                style: 
                TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 10,),
               Container(
                width:150,
                height:45,
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20))
                ),
                child: TextButton(onPressed: () {
                  Null;
                }, 
                child:
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text('Medical History',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                )
                ),
               )
              ],
            )
          ],
        ),
        SizedBox(height: 70,),
        Center(
          child: Column(
            children: [
              MyaccountInfo(Icons.alarm, '08:00 - 9:30 01'),
              SizedBox(height: 15,),
              MyaccountInfo(Icons.phone_android_sharp, '043838732'),
              SizedBox(height: 15,),
              MyaccountInfo(Icons.location_on, '45 bshbishyy'),
              SizedBox(height: 15,),
              MyaccountInfo(Icons.edit_document, 'Cancer high level')
            ],
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
             ThirdPageContainer(Colors.blue, 'Stsrt Procedures', 30, 25,2),
             ThirdPageContainer(Colors.grey, 'Edit', 30, 25,2),
          ],
        ),
        SizedBox(height: 20,),
         Row(
          children: [
             ThirdPageContainer(Colors.blue, 'Back', 30, 25,2),
             ThirdPageContainer(Colors.blue, 'Patient Missing', 30, 25,2),
          ],
        )
      ],
    ),
    );
  }
}