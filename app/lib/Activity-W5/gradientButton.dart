import 'package:flutter/material.dart';

abstract class GradientButton extends StatelessWidget {
  const GradientButton({super.key, required this.label, required this.start, required this.end});
    final String label;
    final Color start;
    final Color end;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [start, end]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(label, style: TextStyle(
          fontSize: 30,

            color: Colors.white)),
      ),
    );
  }
}
