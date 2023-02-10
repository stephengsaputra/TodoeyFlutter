import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: true,
      onChanged: (bool? newValue) {},
      title: const Text('Hello, world!'),
    );
  }
}
