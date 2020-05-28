import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'Task.dart';

class Taskdate with ChangeNotifier{
  List <Task> tasklists=[
    Task(TaskName: 'spora git'),
    Task(TaskName: 'flutter çalış'),
  ];
  int get tasknumber{
    return tasklists.length;
  }

  void taskAdd(Task newTask){
    tasklists.add(newTask);
    notifyListeners();
  }
  void TaskUpdate(Task g){
    g.toggleDone();
    notifyListeners();
  }
  void TaskDelete(Task g){
    tasklists.remove(g);
    notifyListeners();
  }
}