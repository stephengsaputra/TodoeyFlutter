import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_screen_header.dart';
import 'package:todoey/widgets/task_card_view.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(
                  top: 60, left: 30, right: 30, bottom: 20),
              child: const TaskScreenHeader()),
          TaskCardView(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FAB');
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}
