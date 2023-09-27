import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:realtime_db/user.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _tk = TextEditingController();
  TextEditingController _mk = TextEditingController();

  List<user> list_user = [];

  void pushDataToFirebase(String name, String tk, String mk) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    final DatabaseReference databaseReference =
        FirebaseDatabase.instance.reference();
    databaseReference.child(name).set({'key1': tk, 'key2': mk});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Realtime Database"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: list_user.length,
              itemBuilder: (context, index) {
                user a = list_user[index];
                return Card(
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(a.name),
                        Text("Tài khoản: ${a.taikhoan}"),
                        Text("Mật khẩu: ${a.matkhau}"),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              TextField(
                controller: _name,
                decoration: InputDecoration(hintText: "Name:"),
              ),
              TextField(
                controller: _tk,
                decoration: InputDecoration(hintText: "Tài khoản"),
              ),
              TextField(
                controller: _mk,
                decoration: InputDecoration(hintText: "Mật khẩu:"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    list_user.add(user(_name.text, _tk.text, _mk.text));
                    _name.text = "";
                    _tk.text = "";
                    _mk.text = "";
                  });
                  //pushDataToFirebase(_name.text, _tk.text, _mk.text);
                  // databaseReference
                  //     .child(_name.text)
                  //     .set({'tk': _tk.text, 'mk': _mk.text});
                },
                child: Text("ADD"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}