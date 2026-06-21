import 'package:flutter/material.dart';
import 'package:app/Practice-W6/EXERCISE-3/ui/screens/welcome_screen.dart';
import 'package:app/Practice-W6/EXERCISE-3/ui/screens/temperature_screen.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool isSelected = true;
  void changeScreen() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(context) {
    Widget currentScreen = isSelected
        ? WelcomeScreen(onTap: changeScreen,)
        : TemperatureScreen(onTap: changeScreen,);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff16C062), Color(0xff00BCDC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
