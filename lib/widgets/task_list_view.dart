import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list_tile.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class TaskListView extends StatefulWidget {
  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskListTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkBoxCallback: (bool? checkboxState) {
                Provider.of<TaskData>(context, listen: false).changeTask(task);
              },
              deleteCallback: () {
                Provider.of<TaskData>(context, listen: false).deleteTask(task);
              },
            );
          },
          padding: const EdgeInsets.all(20),
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
