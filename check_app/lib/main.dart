import 'package:flutter/material.dart';

void main() {
  runApp(const app());
}

class app extends StatefulWidget {
  const app({super.key});
  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("xin chao"),
        ),
        body: Text("jasd"),
      ),
    );
  }
}
