import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({super.key, required this.taskName, required this.taskCompleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChanged),
            Text(taskName),
          ],
        ),
      ),
    );
  }
}
