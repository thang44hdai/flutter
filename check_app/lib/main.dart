import 'package:flutter/material.dart';

void main() {
  //runApp(const MainApp(,));
  runApp(
    MaterialApp(
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
    ),
  );
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
  void initState() {
    widget.loading = true;
  }
  @override
  Widget build(BuildContext context) {
    return widget.loading
        ? const CircularProgressIndicator()
        : const Text("data");
  }
}
// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('xin'),
//         ),
//       ),
//     );
//   }
// }