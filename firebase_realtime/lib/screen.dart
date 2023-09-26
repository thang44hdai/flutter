import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_realtime/user.dart';
import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _tk = TextEditingController();
  TextEditingController _mk = TextEditingController();

  final DatabaseReference databaseReference =
      FirebaseDatabase.instance.reference();

  List<user> list_user = [];

  void pushDataToFirebase(String name, String tk, String mk) {
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
                  pushDataToFirebase(_name.text, _tk.text, _mk.text);
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
