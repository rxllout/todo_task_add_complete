import 'package:flutter/material.dart';
import '/models/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State {
  List tasks = [
    Task(name: 'Insert Task name', isDone: false),
    Task(name: 'Insert Task name', isDone: false),
    Task(name: 'Insert Task name', isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                tasks[index].toggleDone();
                print(
                    '+++ CHECKBOX STATE CHANGED AT CURRENT TASK INDEX $checkboxState');
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
