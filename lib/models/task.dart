import 'package:flutter/material.dart';
import 'package:todo_hive/data/database.dart';
import 'package:todo_hive/widgets/dialog_box.dart';

class TaskHandler {
  final TextEditingController controller;
  ToDoDataBase db = ToDoDataBase();
  final BuildContext context;

  TaskHandler({
    required this.controller,
    required this.context,
  });

  void saveNewTask() {
    db.toDoList.add([controller.text, false]);
    db.updateDataBase();
    controller.clear();
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: controller,
          onSave: saveNewTask,
          onCancel: () {
            controller.clear();
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
