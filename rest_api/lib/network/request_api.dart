import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:rest_api/models/post.dart';
import 'package:http/http.dart' as http;

class networkRequest {
  static const String url = "https://jsonplaceholder.typicode.com/posts";
  // static List<Post> parsePost(List<dynamic> list) {
  //   List<Post> posts = list.map((e) => Post.fromJson(e)).toList();
  //   return posts;
  // }
  Future<List<Post>> fetchPosts(Function(List<Post>) onDataFetched) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      final List<Post> posts =
          jsonData.map((data) => Post.fromJson(data)).toList();
      onDataFetched(posts);
      return posts;
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception("Not Get Api");
    }
  }
}
