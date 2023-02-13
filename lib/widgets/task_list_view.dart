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
            return TaskListTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkBoxCallback: (bool? checkboxState) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
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
