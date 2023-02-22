import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;

  TaskTile(
      {this.isChecked = false, this.taskTitle = '', this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          color: Colors.white,
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Color(0xFF151C2C),
        value: isChecked,
        onChanged: checkboxCallback,
        // onChanged: toggleCheckboxState,
      ),
    );
  }
}
