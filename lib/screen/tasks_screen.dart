import 'package:flutter/material.dart';
import 'package:gorevler/models/Task.dart';
import 'package:gorevler/models/TaskDate.dart';
import 'package:gorevler/screen/task_list.dart';
import 'package:gorevler/screen/tasks_add.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatefulWidget {

 /* Widget buildModalSheet(BuildContext context){
    return Container(
      child: Center(
        child: Text('model sheet'),
      ),
    );
  }*/

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF80CBC4),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        onPressed: () {
          showModalBottomSheet(context: context, builder:(context)=>TasksAdd(

          ) );

        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, bottom: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.tealAccent,
                  ),
                  radius: 25,
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Görev Yöneticisi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${Provider.of<Taskdate>(context).tasknumber} tane görev',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                child: TaskList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
