import 'package:flutter/material.dart';
import 'package:flutter_test_app/todo.dart';
import 'package:sqflite/sqflite.dart';

class AddTodoApp extends StatefulWidget {
  final Future<Database> db;
  AddTodoApp(this.db);

  @override
  State<StatefulWidget> createState() => _addTodoApp();
}

class _addTodoApp extends State<AddTodoApp> {
  TextEditingController? titleController;
  TextEditingController? contentController;

  @override
  void initState() {
    super.initState();

    titleController = TextEditingController();
    contentController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo 추가')),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: '제목'),),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: contentController,
                  decoration: InputDecoration(labelText: '할일'),),
              ),
              ElevatedButton(onPressed: () {
                Todo todo = Todo(
                  title: titleController!.value.text,
                  content: contentController!.value.text,
                  active: 0
                );
                Navigator.of(context).pop(todo);
              }, child: Text('저장하기'))
            ],
          ),
        ),
      ),
    );
  }
}