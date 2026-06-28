import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main() async {
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');

  // 1- Get the request response
  Response response = await http.get(url);

  // 2- Check the responsae status
  if (response.statusCode != 200) {
    throw Exception('Failed to fetch products (HTTP ${response.statusCode})');
  }

  // 3- Parse the response
  Map<String, dynamic> json = jsonDecode(response.body);
  User user = User.fromJson(json);
  print(user);
}

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
  });

  static User fromJson(Map<String, dynamic> json) {
    const String idKey = 'id';
    const String nameKey = 'name';
    const String usernameKey = 'username';
    const String emailKey = 'email';
    const String phoneKey = 'phone';
    assert(json[idKey] is String);
    assert(json[nameKey] is String);
    assert(json[usernameKey] is String);
    assert(json[emailKey] is String);
    assert(json[phoneKey] is String);
    int id = json[idKey];
    String name = json[nameKey];
    String username = json[usernameKey];
    String email = json[emailKey];
    String phone = json[phoneKey];
    return User(
      id: id,
      name: name,
      username: username,
      email: email,
      phone: phone,
    );
  }

  @override
  String toString() {
    return "User id is $id\nName is $name\nUsername is $username\nEmail is $email\nPhone is $phone";
  }
}

// class Product {
//   final String title;
//   final double price;

//   Product({required this.title, required this.price});

//   static Product fromJson(Map<String, dynamic> json) {
//     const String titleKey = 'title';
//     const String priceKey = 'price';

//     assert(json[titleKey] is String);
//     assert(json[priceKey] is double);

//     String title = json[titleKey];
//     double price = json[priceKey];

//     return Product(title: title, price: price);
//   }

//   @override
//   String toString() {
//     return "Product $title - price= $price";
//   }
// }
