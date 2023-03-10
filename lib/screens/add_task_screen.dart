import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String taskName = "";

    return Container(
      color: const Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (String text) {
                  taskName = text;
                },
              ),
              const SizedBox(height: 20),
              MaterialButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addNewTask(taskName);
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                child: const Text('Add Task'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
