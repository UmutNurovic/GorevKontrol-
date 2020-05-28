import 'package:flutter/material.dart';
import 'package:gorevler/models/TaskDate.dart';
import 'package:gorevler/screen/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> Taskdate(),
      child: MaterialApp(debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
