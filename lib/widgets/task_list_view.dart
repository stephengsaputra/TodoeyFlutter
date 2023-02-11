import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list_tile.dart';
import 'package:todoey/models/task.dart';

class TaskListView extends StatefulWidget {
  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  List<Task> tasks = [
    Task(name: 'Task 1'),
    Task(name: 'Task 2'),
    Task(name: 'Task 3')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskListTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkBoxCallback: (bool? checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      padding: const EdgeInsets.all(20),
      itemCount: tasks.length,
    );
  }
}
