import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
  // runApp(
  //   MaterialApp(
  //     title: "test",
  //     debugShowCheckedModeBanner: false,
  //     home: SafeArea(
  //       child: Scaffold(
  //         appBar: AppBar(
  //           title: Text("Youtube"),
  //           backgroundColor: Colors.red,
  //         ),
  //         body: Center(
  //           child: widget2(false),
  //         ),
  //       ),
  //     ),
  //   ),
  // );
}

class widget1 extends StatelessWidget {
  final bool loading;
  widget1(this.loading);

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return CircularProgressIndicator();
    } else {
      return Text("data");
    }
  }
}

class widget2 extends StatefulWidget {
  bool loading;
  widget2(this.loading);
  @override
  State<StatefulWidget> createState() {
    return state_widget2();
  }
}

class state_widget2 extends State<widget2> {
  @override
  @override
  Widget build(BuildContext context) {
    return widget.loading
        ? const CircularProgressIndicator()
        : const Text("data");
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Row(
          //textDirection: TextDirection.ltr,
          children: <Widget>[
            Expanded(
              child:
                  Text('Deliver features faster', textAlign: TextAlign.center),
            ),
            Expanded(
              child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
            ),
            Expanded(
              child: FittedBox(
                child: FlutterLogo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class open extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Youtube"),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: widget2(false),
          ),
        ),
      ),
    );
  }
}
