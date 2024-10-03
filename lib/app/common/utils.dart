import 'dart:convert';
import 'package:http/http.dart' as http;

import 'models/my_post.dart';

Future<List<MyPost>> fetchPosts() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    List<dynamic> jsonData = json.decode(response.body);
    print('OLA KA CE'+ jsonData.toString());
    return jsonData.map((data) => MyPost.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load posts');
  }
}