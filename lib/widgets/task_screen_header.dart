import 'package:flutter/material.dart';

class TaskScreenHeader extends StatelessWidget {
  final int tasksCount;

  TaskScreenHeader(this.tasksCount);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: Icon(
            Icons.list,
            size: 30,
            color: Colors.lightBlueAccent,
          ),
        ),
        const SizedBox(height: 25),
        const Text(
          'Todoey',
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.w800),
        ),
        Text(
          '$tasksCount Tasks',
          style: const TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }
}
