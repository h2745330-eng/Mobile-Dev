// ---------------------------------------------
// Create a new statefull widget : GroceryForm
// ---------------------------------------------

// The form shall be composed of 2 text fields:
// -	Name of the grocery item
//-	Quantity (number only)

// ⚠️  For now we don’t select the grocery type, we assume it’s always food

// The form shall be composed of 2 buttons:
//-	Cancel button
// -	Add item button
import 'package:app/W7-Practice/3%20%20-%20Grocery%20App%20-%20Start/models/grocery.dart';
import 'package:app/W8-Practice/EX-3-CRUD%20with%20validation%20and%20routes/models/expense.dart';
import 'package:flutter/material.dart';

class GroceryForm extends StatefulWidget {
  const GroceryForm({super.key});

  @override
  State<GroceryForm> createState() => _GroceryFormState();
}

class _GroceryFormState extends State<GroceryForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  void onReset() {
    Navigator.pop(context);
  }

  void onAdd() {
    // get the name
    final name = nameController.text;
    // get the amount
    final quantity = int.tryParse(quantityController.text);
    if (name.isEmpty || quantity == null) {
      return;
    }

    // creat the nex grocery
    final newGrocery = GroceryItem(
      id: uuid.v4(),
      name: name,
      quantity: quantity,
      category: GroceryCategory.other,
    );
    // pass the grocery to the parent
    Navigator.pop(context, newGrocery);
  }

  @override
  void dispose() {
    nameController.dispose();
    quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(label: Text("Name")),
            ),
            TextField(
              controller: quantityController,
              decoration: InputDecoration(label: Text("Quantity")),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: onReset, child: Text("Reset")),
                SizedBox(width: 10),
                ElevatedButton(onPressed: onAdd, child: Text("Add Item")),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
