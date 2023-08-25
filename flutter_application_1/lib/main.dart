import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return mainScreen();
  }
}

List<Color> pick_color = [
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purple
];

class mainScreen extends State<MainApp> {
  Color color_screen = Colors.red;
  int idx = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Test App"),
            backgroundColor: Colors.black,
          ),
          body: Container(
            color: color_screen,
            alignment: Alignment.center,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.black),
              ),
              onPressed: () {
                setState(() {
                  if (idx <= 2)
                    color_screen = pick_color[++idx];
                  else {
                    idx = 0;
                    color_screen = pick_color[idx];
                  }
                });
              },
              child: Text("Change Screen"),
            ),
          ),
        ),
      ),
    );
  }
}

Widget change_screen() {
  return MaterialApp(
    title: "test",
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Test App"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: () {},
            child: Text("Change Screen"),
          ),
        ),
      ),
    ),
  );
}

// Widget green_screen() {
//   return MaterialApp(
//     title: "test",
//     debugShowCheckedModeBanner: false,
//     home: SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Test App"),
//           backgroundColor: Colors.green,
//         ),
//         body: Container(
//           color: Colors.red,
//           alignment: Alignment.center,
//           child: TextButton(
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all(Colors.blue),
//               foregroundColor: MaterialStateProperty.all(Colors.black),
//             ),
//             onPressed: () {
//               mainScreen();
//             },
//             child: Text("Change Screen"),
//           ),
//         ),
//       ),
//     ),
//   );
// }
