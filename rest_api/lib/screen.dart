import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("xin chao"),
      ),
      body: Center(
        child: Text("Chao tam biet cac ban nhe"),
      ),
    );
  }
}
