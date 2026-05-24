import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.all(40),
      color: Colors.blue[300],
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text("CADT STUDENTS",
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
    ),
  );
}