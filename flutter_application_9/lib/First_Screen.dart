import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Icon(Icons.settings_applications_outlined,
            color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}