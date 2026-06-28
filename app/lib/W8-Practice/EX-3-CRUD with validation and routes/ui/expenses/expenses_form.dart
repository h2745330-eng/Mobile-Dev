import 'package:flutter/material.dart';
import '../../models/expense.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key});

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  String? message;
  void onCheckPressed() {
    String title = _titleController.text;
    double? amount = double.tryParse(_amountController.text);
    setState(() {
      if (amount == null){
        message = "Please enter a number";
      }
      return;
    });
    Expense newExpense = Expense(
      amount: amount!,
      title: title,
      category: Category.food,
      date: DateTime.now(),
    );

    Navigator.pop<Expense>(context, newExpense);
  }

  void onCancelPressed() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a new item", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 51, 50, 50),
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: const Color.fromARGB(255, 74, 73, 73),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(  
            children: [
              TextField(
                controller: _titleController,
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('Title', style: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                controller: _amountController,
                maxLength: 50,
                decoration: InputDecoration(
                  prefix: Text("\$"),
                  label: const Text(
                    'Amount',
                    style: TextStyle(color: Colors.grey),
                  ),
                  errorText: message 
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: onCancelPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 63, 62, 62),
                    ),
                    child: Text("Cancel", style: TextStyle(color: Colors.lightBlue),),
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton(
                    onPressed: onCheckPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 63, 62, 62)
                    ),
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.lightBlueAccent),
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
