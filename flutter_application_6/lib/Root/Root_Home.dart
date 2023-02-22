import 'package:flutter/material.dart';
import 'package:flutter_application_6/Screens/First_Screen.dart';

class RootHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FirstScreen(),
    );
  }
}