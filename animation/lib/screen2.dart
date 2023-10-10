import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget.a.name"),
      ),
      body: Hero(
        tag: "ab1",
        child: Container(
          height: 50,
          width: 50,
          color: Colors.amber,
          child: Text("widget.a.description"),
        ),
      ),
    );
  }
}
