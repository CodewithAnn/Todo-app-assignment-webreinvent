import 'package:flutter/material.dart';
import 'package:todo_app_for_webreinvent/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final VoidCallback onToggle;

  const TaskTile({super.key, required this.task, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade300,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      child: ListTile(
        leading: Checkbox(
          checkColor: Colors.white,
          // fillColor: ,
          value: task.isDone,
          onChanged: (_) => onToggle(),
        ),
        title: Text(
          task.title,
          style: TextStyle(
            // color: Colors.white,
            // decorationColor: Colors.white,
            decorationThickness: 4.0,

            decoration: task.isDone ? TextDecoration.lineThrough : null,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
