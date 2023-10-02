import 'package:firebase/user.dart';
import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerDate = TextEditingController();
  List<user> list_user = [];
  @override
  void initState() {
    list_user.add(user("Nguyen Quang Thang", "04/04/2003"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List User"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: list_user.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.star),
                    title: Column(
                      children: [
                        Text(list_user[index].name),
                        Text(list_user[index].date),
                      ],
                    ),
                    trailing: Icon(Icons.ac_unit),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _controllerName,
            decoration: InputDecoration(hintText: "Nhập họ và tên:"),
          ),
          TextField(
            controller: _controllerDate,
            decoration: InputDecoration(hintText: "Nhập ngày tháng năm sinh"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                list_user.add(user(_controllerName.text, _controllerDate.text));
              });
            },
            child: Text("Add User"),
          )
        ],
      ),
    );
  }
}
