import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_for_webreinvent/models/task.dart';
import 'package:todo_app_for_webreinvent/providers/task_provider.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final VoidCallback onToggle;
 final int index;

  const TaskTile({super.key, required this.task, required this.onToggle, required this.index});

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context, listen: false);
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
        trailing: IconButton(onPressed: (){
          _showDeleteDialog(context, taskProvider);
        }, icon: Icon(Icons.delete, color: Colors.red,)),
      ),
    );
  }
  /// method to show Alert Dialog box
   void _showDeleteDialog(BuildContext context, TaskProvider provider) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Delete Task"),
        content: const Text("Are you sure you want to delete this task?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(), // cancel
            child: const Text("No"),
          ),
          TextButton(
            onPressed: () {
              provider.deleteTask(index);
              Navigator.of(context).pop(); // close dialog
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }
}
