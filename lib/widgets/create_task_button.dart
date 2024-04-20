import 'package:flutter/material.dart';
import 'package:todo_hive/models/task.dart';
import 'package:todo_hive/utils/colors.dart';

class CreateTaskButton extends StatefulWidget {
  const CreateTaskButton({
    super.key,
  });

  @override
  State<CreateTaskButton> createState() => _CreateTaskButtonState();
}

class _CreateTaskButtonState extends State<CreateTaskButton> {

  // text Controller from dialog box
  final _controller = TextEditingController();
  late TaskHandler _taskHandler;

  @override
  void initState() {
    super.initState();
    _taskHandler = TaskHandler(
      controller: _controller,
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _taskHandler.createNewTask();
      },
      backgroundColor: GlobalColors.mainColor,
      foregroundColor: GlobalColors.whiteColor,
      child: const Icon(Icons.add),
    );
  }
}
