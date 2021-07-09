import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
   final newTaskTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.teal,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            TextField(
              //autofocus: true,
              controller: newTaskTitleController,
              textAlign: TextAlign.center,
              
            ),
            SizedBox(
              height: 5.0,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              color: Colors.teal,
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTaskTitleController.text);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
