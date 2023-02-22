import 'package:flutter/material.dart';

class MyaccountInfo extends StatelessWidget{
  late IconData icon;
  late String text;
  MyaccountInfo(IconData icon,String text){
      this.icon=icon;
      this.text=text;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
        children: [
          Expanded(
            flex: 1,
            child: 
          Icon(this.icon,
          color: Colors.indigo[300],
          )
          ),
          Expanded(
            flex: 4,
            child: 
             Text(this.text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.grey[700],
              ),
              )
            ),
        ],
    );
  }
}