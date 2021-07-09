import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/task_data.dart';
import 'package:todo_list_app/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      //taskData is the what needs to be returned to all the children
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
