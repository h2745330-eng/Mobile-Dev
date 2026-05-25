import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Center(
          child: Text("Welcome!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.cyan[300],
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: Center(
                child: Text("My hobbies: play volleyball, feed neighbor dog, sleep",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(50, 0, 15, 50),
                padding: EdgeInsets.all(80),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("I'm lightGreen",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 50),
                padding: EdgeInsets.all(80),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("I'm GreenAccent",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 50),
                padding: EdgeInsets.all(80),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("  I'm Green  ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Container(),
        ],
        ),
      ),
    ),
  );
}
