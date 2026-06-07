import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Stateful widget - Button"),
      ),
     body: Center(
       child: Column(
         children: [
           SizedBox(height: 40,),
           SelectedButton(),
           SizedBox(height: 10,),
           SelectedButton(),
           SizedBox(height: 10,),
         ],
       ),
     ),
    ),
  ));
}
class SelectedButton extends StatefulWidget {
  const SelectedButton({super.key});
  @override
  State<SelectedButton> createState() => _SelectedButtonState();
}
class _SelectedButtonState extends State<SelectedButton> {
  String currentLabel = "Not Selected";
  Color backColor = Colors.blue[50]!;
  Color textColor = Colors.black;
  void onTap(){
    print("hi");
    setState(() {
      if (currentLabel == "Not Selected"){
        currentLabel = "Selected";
        backColor = Colors.blue[500]!;
        textColor = Colors.white;
      }
      else {
        currentLabel = "Not Selected";
        backColor = Colors.blue[50]!;
        textColor = Colors.black;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backColor,
        ),
        onPressed: onTap,
        child: Center(
          child: Text(currentLabel,
            style: TextStyle(
              color: textColor,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
