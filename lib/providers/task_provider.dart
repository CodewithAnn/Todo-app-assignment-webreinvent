import 'package:flutter/material.dart';
import 'package:todo_app_for_webreinvent/models/task.dart';

class TaskProvider  with ChangeNotifier{
  final List<Task> _tasks = [];
  ///tasks getter to reterive the value of _tasks
  List<Task> get tasks => _tasks;
  /// addTask() Method used to add the task in list 
  /// then Update the state using notifyerListenrs()
  void addTask(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();
  }
  /// toggleTask() toggles the task marker
  void toggleTask(int index) {
    _tasks[index].isDone = !_tasks[index].isDone;
    notifyListeners();
  }
}