import 'package:flutter/material.dart';
enum ButtonType { Primary, Secondary, Disabled}
enum LeftRight { left, right}
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Custom Button"),
      ),
      body: Container(
        margin: EdgeInsets.all(40),
          child: Column(
            children: [
              CustomButton(label: "Submit", icon: Icons.check),
              CustomButton(label: "Time", icon: Icons.access_time, type: ButtonType.Secondary,),
              CustomButton(label: "Account", icon: Icons.settings, type: ButtonType.Disabled,),
            ],
          ),
      ),
    ),
  ));
}
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, required this.icon, this.position=LeftRight.left, this.type=ButtonType.Primary});
  final String label;
  final IconData icon;
  final LeftRight position;
  final ButtonType type;
  @override
  Widget build(BuildContext context) {
    final Color buttonColor;
    if(type == ButtonType.Secondary){
      buttonColor = Colors.green;
    }
    else if (type == ButtonType.Disabled){
      buttonColor = Colors.grey;
    }
    else{
      buttonColor = Colors.blue;
    }

    if (position == LeftRight.right){
      Icon(
        icon,
      );
      Text(label,
        style: TextStyle(
          fontSize: 15,
      ),
      );
    }
    List<Widget> rowWidget = [
      Icon(
        icon,
      ),
      Text(label,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ];

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: rowWidget
      ),
    );
  }
}
