import 'dart:math';

import 'package:flutter/material.dart';
final String dice1Path = "assets/dice/dice-1.png";
final String dice2Path = "assets/dice/dice-2.png";
final String dice3Path = "assets/dice/dice-3.png";
final String dice4Path = "assets/dice/dice-4.png";
final String dice5Path = "assets/dice/dice-5.png";
final String dice6Path = "assets/dice/dice-6.png";
class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => _AppState();
}
class _AppState extends State<App> {
  String currentPath = dice1Path;
  void onTap(){
    int number=Random().nextInt(6);
    setState(() {
      if ( number == 1 ){
        currentPath = dice1Path;
      }
      else if ( number == 2 ) {
        currentPath = dice2Path;
      }
      else if ( number == 3 ){
        currentPath = dice3Path;
      }
      else if ( number == 4 ){
        currentPath = dice4Path;
      }
      else if ( number == 5 ){
        currentPath = dice5Path;
      }
      else{
        currentPath = dice6Path;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(currentPath,
            height: 300,
            width: 300,
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: onTap, child: Text("Roll Dice", style: TextStyle(color: Colors.white, fontSize: 60),)),
          ],
        ),
      ),
    );
  }
}
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: App(),
      ),
    ),
  );
}
