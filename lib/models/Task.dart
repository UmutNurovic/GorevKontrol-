class Task{
  final String TaskName;
  bool done ;
  Task({this.TaskName , this.done= false});
  void toggleDone(){
    done=!done;

  }
}