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
          SizedBox(height: 40,),
          HobbyCard(hobbyTitle: "Travelling", hobbyIcon: Icons.travel_explore, hobbyColor: Colors.green,),
          HobbyCard(hobbyTitle: "Skating", hobbyIcon: Icons.skateboarding, hobbyColor: Colors.blueGrey),
        ],
      ),
    ),
  ));
}
class HobbyCard extends StatelessWidget {
  const HobbyCard({super.key, required this.hobbyTitle, required this.hobbyIcon, this.hobbyColor=Colors.blue});
  final String hobbyTitle;
  final IconData hobbyIcon;
  final Color hobbyColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
      decoration: BoxDecoration(
        color: hobbyColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            hobbyIcon,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 20),
          Text(hobbyTitle,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
        ],
      ),
    );
  }
}
