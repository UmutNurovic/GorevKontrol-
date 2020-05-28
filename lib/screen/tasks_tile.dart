import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool secim;
  final String Taskname;
  final Function checkboxCallback;
  final Function listTileLongPress;
  TaskTile({this.secim,this.Taskname,this.checkboxCallback,this.listTileLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(Taskname,
      style: TextStyle(
        color: Colors.white,
        decoration: secim ? TextDecoration.lineThrough:null
      ),
      ),
      trailing: Checkbox(
        value: secim,
        onChanged: checkboxCallback,
        activeColor: Colors.red,
      ),
      onLongPress: listTileLongPress,

    );
  }
}

/*class TaskCheckBox extends StatelessWidget {
  final bool secim;
  final Function secimDegistir;

  TaskCheckBox({this.secim, this.secimDegistir});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: secim,
      onChanged: secimDegistir,
      activeColor: Colors.red,
    );
  }
}*/
