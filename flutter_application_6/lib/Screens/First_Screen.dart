// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last



import 'package:flutter/material.dart';
import 'package:flutter_application_6/Designs/Containers.dart';
import 'package:flutter_application_6/Screens/Second_Screen.dart';
import 'package:flutter_application_6/Screens/Third_Screen.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget{
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
    body: 
    Column(
      children: [
        SizedBox(height: 30,),
        Center(
          child: Text('wednesday, 22 Feb 2023',
            style: GoogleFonts.aBeeZee(
              textStyle: TextStyle(
                fontSize: 27,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )
            ),
          ),
        ),
        ContainerDesign(Icons.alarm, 'Ahmed', '10:30',false,false),
        ContainerDesign(Icons.alarm, 'mark', '11:30',false,false),
        ContainerDesign(Icons.alarm, 'joe', '16:35',false,false),
        ContainerDesign(Icons.alarm, 'hussien','19:30',false,false),
        ContainerDesign(Icons.alarm, 'gamal', '22:30',true,false),
        TextButton(onPressed:() {
            Navigator.push(
              context,
             MaterialPageRoute(builder: (context) => MohmedScreen() ),
                     );
        }, 
         child:Container(alignment: Alignment.topLeft,
         margin: EdgeInsets.only(top:5,left: 23),
          width: double.infinity,
          height: 75,
          child:Column(
            children: [
              Text('Mohamed',
              style:  TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Colors.grey[700]
        ),
              ),
            SizedBox(height: 10,),
         Row(
          children: [
            Expanded(
              flex: 1,
              child:
             Icon(Icons.alarm,
            color: Colors.grey[600],
            ), 
            ),
            Expanded
            (
              flex: 10,
              child:  Text('23:30',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w800,
              color: Colors.grey[600]
            ),
            )),
            Icon(Icons.done_all,
            color: Colors.blue[800],
            size: 30,
            )
            ],
          ) ,
             Divider(
          height: 8,
          thickness:0.8 ,
          endIndent: 15,
          indent: 5,
          color: Colors.grey[600],
        )
      ],
    )
    ),
   ),
      ],
    ),
   );
  }
  }