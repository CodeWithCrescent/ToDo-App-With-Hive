import 'package:flutter/material.dart';
import 'package:todo_hive/widgets/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        title: const Text('TO DO'),
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: 'A test task',
            taskCompleted: true,
          ),
          ToDoTile(
            taskName: 'Hello tuesday',
            taskCompleted: false,
          ),
          ToDoTile(
            taskName: 'Wake up early',
            taskCompleted: false,
          ),
        ],
      ),
    );
  }
}
