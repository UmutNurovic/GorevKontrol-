import 'package:flutter/material.dart';
import 'package:gorevler/models/Task.dart';
import 'package:gorevler/models/TaskDate.dart';
import 'package:provider/provider.dart';

class TasksAdd extends StatefulWidget {

  @override
  _TasksAddState createState() => _TasksAddState();
}

class _TasksAddState extends State<TasksAdd> {
  String newTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF80CBC4),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Color(0xFFB2DFDB),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Görev Ekle',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (val){
                  newTask=val;
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            FlatButton(
              child: Text(
                'ekle',
                style: TextStyle(
                    color: Color(0xFF42A5F5),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,),
              ),
              onPressed: () {
                Provider.of<Taskdate>(context,listen: false).taskAdd(Task(TaskName: newTask));
                Navigator.pop(context);
               // widget.taskadd(newTask);
              },
              color: Colors.black87,
            )
          ],
        ),
      ),
    );
  }
}
