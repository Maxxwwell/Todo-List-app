import 'package:flutter/foundation.dart';
import 'package:todo_list_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy bread'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
  ];

//function to count the number of tasks
  int get taskCount {
    return tasks.length;
  }

//function for adding new task
//ALWAYS USE THIS FUNCTION TO ADD TASK... if not, it wont add
//is the version that adds the notify listensers.
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners(); //to send the data to all who needs it
  }

  void updateTask(Task task){  //the data type Task is from a class as the data itself
    task.toggleDone();        //property from that class
    notifyListeners();        //to update the widgets listening to the task
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}
