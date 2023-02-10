import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list_view.dart';

class TaskCardView extends StatefulWidget {
  @override
  State<TaskCardView> createState() => _TaskCardViewState();
}

class _TaskCardViewState extends State<TaskCardView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: TaskListView(),
      ),
    );
  }
}
