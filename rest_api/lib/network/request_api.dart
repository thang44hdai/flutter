import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:rest_api/models/post.dart';
import 'package:http/http.dart' as http;

class networkRequest {
  static const String url = "https://jsonplaceholder.typicode.com/posts";
  static List<Post> parsePost(String responseBody) {
    var list = json.decoder(responseBody) as List<dynamic>;
    List<Post> posts = list.map((e) => Post.fromJson(e)).toList();
    return posts;
  }

  static Future<List<Post>> fetchPosts({int page = 1}) async {
    final response = await http.get(url as Uri);
    if (response.statusCode == 200) {
      return compute(parsePost, response.body);
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception("Not Get Api");
    }
  }
}
