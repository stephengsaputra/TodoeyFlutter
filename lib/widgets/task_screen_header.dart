import 'package:flutter/material.dart';

class TaskScreenHeader extends StatelessWidget {
  const TaskScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: Icon(
            Icons.list,
            size: 30,
            color: Colors.lightBlueAccent,
          ),
        ),
        SizedBox(height: 25),
        Text(
          'Todoey',
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.w800),
        ),
        Text(
          '12 Tasks',
          style: TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }
}
