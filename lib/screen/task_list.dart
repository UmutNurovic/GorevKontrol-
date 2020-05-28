import 'package:flutter/material.dart';
import 'package:gorevler/models/Task.dart';
import 'package:gorevler/models/TaskDate.dart';
import 'package:gorevler/screen/tasks_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdate>(
      builder: (context, taskdate, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              Taskname:
                  taskdate.tasklists[index].TaskName,
              secim: taskdate.tasklists[index].done,
              checkboxCallback: (bool val) {
                taskdate.TaskUpdate(taskdate.tasklists[index]);
              },
              listTileLongPress: (){
                if(taskdate.tasklists[index].done==true){
                  taskdate.TaskDelete(taskdate.tasklists[index]);
                }
                else{
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text("Önce Görevi yapmalısınız"),));
                }
              },
            );
          },
          itemCount: taskdate.tasknumber,
        );
      },
    );
  }
}
