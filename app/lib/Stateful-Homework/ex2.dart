import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
   home: Scaffold(
     appBar: AppBar(
       title: Text("Favorite cards",
        style: TextStyle(
         fontSize: 18,
        ),
       ),
       backgroundColor: Colors.blue,
     ),
     body: Column(
       children: [
         Favorite(),
         Favorite(),
         Favorite(),
       ],
     )
   ),
  )
  );
}
class Favorite extends StatefulWidget {
  const Favorite({super.key});
  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  Color favColor= Colors.grey;
  void onTap(){
    setState(() {
      if (favColor == Colors.grey){
        favColor = Colors.red;
      }
      else {
        favColor = Colors.grey;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(14, 12, 10, 0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text("title",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("description",),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.favorite, color: favColor),
                onPressed: onTap,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
