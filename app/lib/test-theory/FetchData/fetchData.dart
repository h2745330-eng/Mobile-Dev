import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Todo {
  // YOUR CODE
  final String userId;
  final String id;
  final String title;
  final String completed;

  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  static Todo fromJson(Map<String, dynamic> json) {
    const userIdKey = 'userId';
    const idKey = 'id';
    const titleKey = 'title';
    const completedKey = 'completed';
    assert(json[userIdKey] is String);
    assert(json[idKey] is String);
    assert(json[titleKey] is String);
    assert(json[completedKey] is String);
    int userId = json[userIdKey];
    int id = json[idKey];
    String title = json[titleKey];
    bool completed = json[completedKey];
    return Todo(
      userId: userId.toString(),
      id: id.toString(),
      title: title,
      completed: completed.toString(),
    );
  }

  @override
  String toString() {
    return 'userID is $userId\nid is $id\ntitle is $title\ncompleted is $completed';
  }
}

Future<Todo> fetchTodo() async {
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/todos/3");

  Response response = await http.get(url);

  Map<String, dynamic> json =
      convert.jsonDecode(response.body) as Map<String, dynamic>;
  Todo result = Todo.fromJson(json);
  // YOUR CODE
  return result;
}

void main() async {
  print(await (fetchTodo()));
  // Call the fetch and dispaly the TODO
}
