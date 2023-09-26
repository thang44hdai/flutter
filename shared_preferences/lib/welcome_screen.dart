import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.turn_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Welcome"),
      ),
    );
  }
}
