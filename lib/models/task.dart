class Task{
 
 final String name;
 bool isDone;

 Task({this.name, this.isDone = false});

  void toggleDone(){
    isDone = !isDone;   //sets to true if its false n vice versa
  }
}