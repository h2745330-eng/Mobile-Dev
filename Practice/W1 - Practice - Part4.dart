

void main() {
  //Exercise1
  List<int> Scores = [45, 78, 62, 49, 85, 33, 90, 50];
  var Pass_Score = Scores.where((Score) => Score >= 50);
  print(Pass_Score.toList());
  int Student = Pass_Score.length;
  print("$Student students passed.");

  //Exercise2
  const pizzaPrices = {'margherita': 5.5, 'pepperoni': 7.5, 'vegetarian': 6.5};
  const orders = ['margherita', 'pepperoni', 'cheese'];
  double total = 0;
  for (var order in orders) {
    if (order == "margherita") {
      total += pizzaPrices["margherita"]!;
    } else if (order == "pepperoni") {
      total += pizzaPrices["pepperoni"]!;
    } else if (order == "vegetarian") {
      total += pizzaPrices["vegetarian"]!;
    } else {
      print("$order pizza is not on the menu");
    }
  }
  print("Total : \$$total");
}
