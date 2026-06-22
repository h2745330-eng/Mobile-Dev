import 'package:flutter/material.dart';

Widget currentWidget = RedScreen();

class GreenScreen extends StatelessWidget {
  const GreenScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text("Green Screen")),
    );
  }
}

class RedScreen extends StatelessWidget {
  const RedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(child: Text("Red Screen")),
    );
  }
}

class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text("Blue Screen")),
    );
  }
}

enum AppTabs { red, green, blue }

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  void onRed() {
    setState(() {
      currentWidget = RedScreen();
    });
  }

  void onBlue() {
    setState(() {
      currentWidget = BlueScreen();
    });
  }

  void onGreen() {
    setState(() {
      currentWidget = GreenScreen();
    });
  }

  Widget get content {
    return currentWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabs navigation")),
      body: content,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: onRed,
              icon: Icon(Icons.home, color: Colors.red),
            ),
            IconButton(
              onPressed: onBlue,
              icon: Icon(Icons.home, color: Colors.blue),
            ),
            IconButton(
              onPressed: onGreen,
              icon: Icon(Icons.home, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: App()));
}
