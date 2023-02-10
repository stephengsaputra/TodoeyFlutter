import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list_tile.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [TaskListTile(), TaskListTile(), TaskListTile()],
    );
  }
}
