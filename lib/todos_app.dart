// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Todos_Demo extends StatefulWidget {
  const Todos_Demo({super.key});

  @override
  State<Todos_Demo> createState() => _Todos_DemoState();
}

class _Todos_DemoState extends State<Todos_Demo> {
  final stdName = [];
  TextEditingController studentNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
          child: TextField(
            controller: studentNameController,
          ),
        ),
      ),
      body: stdName.isEmpty
          ? Center(
              child: Text(
                'No Students Registered yet!',
                style: TextStyle(fontSize: 20),
              ),
            )
          : ListView.builder(
              itemCount: stdName.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(bottom: 6, left: 6, right: 6),
                  child: ListTile(
                    tileColor: Colors.amber,
                    title: Text(
                      '${stdName[index]}',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        stdName.removeAt(index);
                        setState(() {});
                      },
                      icon: Icon(Icons.delete_forever),
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          stdName.add((studentNameController.text));
          studentNameController.clear();
          setState(() {});
        },
        child: Text('Add'),
      ),
    );
  }
}
