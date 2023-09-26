import 'package:flutter/material.dart';
import 'package:rest_api/models/post.dart';
import 'package:rest_api/network/request_api.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  List<Post> postData = [];
  final data = networkRequest();
  @override
  void initState() {
    super.initState();
    fetchDataFromNetwork();
  }

  void fetchDataFromNetwork() {
    data.fetchPosts((data) {
      setState(() {
        postData = data; // Cập nhật danh sách bài viết
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("xin chao"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: postData.length,
          itemBuilder: (BuildContext context, int index) {
            final data = postData[index];
            return Card(
              child: ListTile(
                title: Column(
                  children: [
                    Text(data.userId.toString()),
                    Text(data.title.toString()),
                    Text(data.body.toString()),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
