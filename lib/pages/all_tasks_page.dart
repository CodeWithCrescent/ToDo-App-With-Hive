import 'package:flutter/material.dart';
import 'package:todo_hive/utils/colors.dart';
import 'package:todo_hive/widgets/create_task_button.dart';
import 'package:todo_hive/widgets/todo_tile_lists.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      appBar: AppBar(
        title: const Text('All Tasks'),
      ),
      floatingActionButton: const CreateTaskButton(),
      body: const ToDoTileLists(),
    );
  }
}
