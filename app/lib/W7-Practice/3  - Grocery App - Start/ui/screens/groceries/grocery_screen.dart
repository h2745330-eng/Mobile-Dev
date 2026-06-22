import 'package:flutter/material.dart';
import '../../../data/mock_grocery_data.dart';
import 'grocery_form.dart';
import 'grocery_tile.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  void onAddPressed() {
    showModalBottomSheet(
      isScrollControlled: true,
      builder: (context) => GroceryForm(),
      context: context,
    ).then((newGrocery) {
      if (newGrocery == null) {
        return;
      }
      setState(() {
        allGroceryItems.add(newGrocery);
      });
    });
  }
  // ---------------------------------------------
  // Navigate to the form screen using showModalBottomSheet
  // ---------------------------------------------

  // https://api.flutter.dev/flutter/material/showModalBottomSheet.html

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Text('No items added yet.'));

    if (allGroceryItems.isNotEmpty) {
      // ---------------------------------------------
      //  Loop on groceries with an ListView builder
      //  For each grocery items, create a GroceryTile (grocery_tile.dart)
      // ---------------------------------------------
      // https://api.flutter.dev/flutter/widgets/ListView-class.html
      content = ListView.builder(
        itemCount: allGroceryItems.length,
        itemBuilder: (context, index) {
          return GroceryTile(groceryItem: allGroceryItems[index]);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
            onPressed: onAddPressed,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: content,
    );
  }
}
