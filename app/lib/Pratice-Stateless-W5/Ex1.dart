import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("My hobbies"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.fromLTRB(40, 40, 40, 0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.travel_explore,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text("Travelling",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.fromLTRB(40, 10, 40, 0),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.skateboarding,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(width: 20),
                Text("Skating",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
              ],
            ),
          )
        ],
      ),
    ),
  ));
}