import 'package:app/test-theory/test.dart';
import 'package:flutter/material.dart';

class OrangeCard extends StatelessWidget {
  const OrangeCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    print("Build the item $index");

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.amber,
        height: 200,
        child: Center(child: Text("$index")),
      ),
    );
  }
}

void main() {
  
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Big list -  with Column + Scroll View")),
        body:  SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.amberAccent,
                child: ListTile(
                  leading: Icon(Icons.flag),
                  title: Text("ListTile time"),
                  trailing: Icon(Icons.more_vert_rounded),
                ),
              ),
              Container(
                color: Colors.blue,
                child: ListTile(
                  leading: Icon(Icons.flag),
                  title: Text("ListTile time"),
                  trailing: Icon(Icons.more_vert_rounded),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 133, 249, 137),
                child: ListTile(
                  leading: Icon(Icons.flag),
                  title: Text("ListTile time"),
                  subtitle: Text("Amazon"),
                  trailing: Icon(Icons.more_vert_rounded),
                ),
              ),
               for(int i=0; i<20; i++) OrangeCard(index: i)
            ],
          ),
        ),
      ),
    ),
  );
}
