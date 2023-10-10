import 'package:flutter/material.dart';

class SourceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DestinationScreen(),
          ),
        );
      },
      child: Hero(
        tag: 'imageHero',
        child: Image.asset('assets/coca.png'),
      ),
    );
  }
}

class DestinationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.asset('assets/pepsi.png'),
          ),
        ),
      ),
    );
  }
}
