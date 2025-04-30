import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_for_webreinvent/providers/task_provider.dart';
import 'package:todo_app_for_webreinvent/screens/todo_screen.dart';

void main() {
  runApp( ToDoApp());
}

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'To-Do App',
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.deepPurple,
        ),
        home: ToDoScreen(),
      ),
    );
  }
}
/// First i did this then i think let make it professional 
/// so then i build a proper folder structure and user Provider for
/// statemangement
// class Task {
//   String title;
//   bool isDone;

//   Task({required this.title, this.isDone = false});
// }

// class ToDoListScreen extends StatefulWidget {
//   @override
//   _ToDoListScreenState createState() => _ToDoListScreenState();
// }

// class _ToDoListScreenState extends State<ToDoListScreen> {
//   final List<Task> _tasks = [];
//   final TextEditingController _controller = TextEditingController();

//   void _addTask() {
//     final title = _controller.text.trim();
//     if (title.isNotEmpty) {
//       setState(() {
//         _tasks.add(Task(title: title));
//         _controller.clear();
//       });
//     }
//   }

//   void _toggleTask(int index) {
//     setState(() {
//       _tasks[index].isDone = !_tasks[index].isDone;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('To-Do List'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     decoration: InputDecoration(
//                       hintText: 'Enter task',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 ElevatedButton(
//                   onPressed: _addTask,
//                   child: Text('Add'),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _tasks.length,
//               itemBuilder: (context, index) {
//                 final task = _tasks[index];
//                 return ListTile(
//                   leading: Checkbox(
//                     value: task.isDone,
//                     onChanged: (_) => _toggleTask(index),
//                   ),
//                   title: Text(
//                     task.title,
//                     style: TextStyle(
//                       decoration:
//                           task.isDone ? TextDecoration.lineThrough : null,
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
