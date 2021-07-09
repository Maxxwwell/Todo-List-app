import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/task_tile.dart';
import 'package:todo_list_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //consumer does the listening
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {

            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              //to read the data in task data which is being provided
              isChecked: task.isDone,
              checkboxCallback: (checkboxSate) {
                taskData.updateTask(task);
              },
              longPressCallback: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
