import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  //class
  final bool isChecked; //properties
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;
  
  TaskTile(
      {this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback}); //constructor

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
        //if is checked, linethrough else null
      ),
      trailing: Checkbox(
        //all this block is making the checkbox tic n ontic
        activeColor: Colors.teal,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
