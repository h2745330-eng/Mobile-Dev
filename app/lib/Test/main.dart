import 'package:flutter/material.dart';
final String dice1Path = "assets/dice/dice-1.png";

void onTap() {

}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.purple,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(dice1Path),
                SizedBox(height: 20,),
                TextButton(onPressed: onTap, child: Text("CLICK", style: TextStyle(color: Colors.white, fontSize: 60),)),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
