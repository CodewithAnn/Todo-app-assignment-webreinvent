import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_for_webreinvent/providers/task_provider.dart';
import 'package:todo_app_for_webreinvent/widgets/task_tile.dart';

class ToDoScreen extends StatelessWidget {
  ToDoScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  void _addTask(BuildContext context) {
    final provider = Provider.of<TaskProvider>(context, listen: false);
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      provider.addTask(text);
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TaskProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("To-Do List"), centerTitle: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter Your task...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => _addTask(context),
                  child: Text('Add'),
                ),
              ],
            ),
          ),
          Expanded(
            child:
                provider.tasks.isEmpty
                    ? Center(child: Text("No tasks yet!"))
                    : ListView.builder(
                      itemCount: provider.tasks.length,
                      itemBuilder: (context, index) {
                        return TaskTile(
                          task: provider.tasks[index],
                          onToggle: () => provider.toggleTask(index),
                        );
                      },
                    ),
          ),
        ],
      ),
    );
  }
}
