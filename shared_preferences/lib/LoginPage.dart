import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/welcome_screen.dart';

class LoginPage extends StatefulWidget {
  final FlutterSecureStorage storage;

  LoginPage({required this.storage});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _user = TextEditingController();
  TextEditingController _password = TextEditingController();

  void check_login(String x, String y) async {
    String? user = await widget.storage.read(key: "user");
    String? password = await widget.storage.read(key: "password");

    if (x == user && y == password) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => welcome(),
        ),
      );
    }
  }

  @override
  void initState() {
    widget.storage.write(key: "user", value: "thang");
    widget.storage.write(key: "password", value: "4423");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Sample App'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _user,
              decoration: InputDecoration(hintText: "User"),
            ),
            TextField(
              controller: _password,
              decoration: InputDecoration(hintText: "Password"),
            ),
            ElevatedButton(
              onPressed: () {
                check_login(_user.text, _password.text);
                _user.text = "";
                _password.text = "";
              },
              child: Text("Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
