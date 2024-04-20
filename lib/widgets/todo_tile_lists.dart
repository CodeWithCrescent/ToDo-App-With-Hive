import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_hive/data/database.dart';
import 'package:todo_hive/widgets/todo_tile.dart';

class ToDoTileLists extends StatefulWidget {
  const ToDoTileLists({super.key});

  @override
  State<ToDoTileLists> createState() => _ToDoTileListsState();
}

class _ToDoTileListsState extends State<ToDoTileLists> {
  // reference the box
  final _myBox = Hive.box('mybox');
  // a db instance of a ToDoDataBase() class
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    // if this is the first time ever opening the app, then create default data
    if (_myBox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      // there already exists some data
      db.loadData();
    }

    super.initState();
  }

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: min(db.toDoList.length, 5),
      itemBuilder: (context, index) {
        return ToDoTile(
          taskName: db.toDoList[index][0],
          taskCompleted: db.toDoList[index][1],
          onChanged: (value) => checkBoxChanged(value, index),
          deleteFunction: (contex) => deleteTask(index),
        );
      },
    );
  }
}
