// ---------------------------------------------
// Create a new stateless widget : GroceryTile
// ---------------------------------------------
import 'package:flutter/material.dart';
import 'package:app/W7-Practice/3  - Grocery App - Start/models/grocery.dart';

class GroceryTile extends StatelessWidget {
  const GroceryTile({super.key});
  final GroceryItem groceryItem;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

void main() {
  runApp();
}

// The widget shall take as required parameter a Grocery  

// 	Use a ListTile widget to layout the elements


// https://api.flutter.dev/flutter/material/ListTile-class.html