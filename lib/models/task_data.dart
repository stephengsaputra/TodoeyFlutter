import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Test 1'),
    Task(name: 'Test 2'),
    Task(name: 'Test 3'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
