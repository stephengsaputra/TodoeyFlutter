import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list_tile.dart';
import 'package:todoey/models/task.dart';

class TaskListView extends StatefulWidget {
  final List<Task> tasks;

  TaskListView({required this.tasks});

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskListTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkBoxCallback: (bool? checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      padding: const EdgeInsets.all(20),
      itemCount: widget.tasks.length,
    );
  }
}
