import '../models/expense.dart';
import '../repository/expense_repository.dart';

void main() async {
  print("Fetching expense");

  List<Expense> expense = await expenseRepository.fetchExpense();
  for (int i = 0; i < expense.length; i++) {
    print("  expense fetched : ${expense[i].title}");
  }
}
