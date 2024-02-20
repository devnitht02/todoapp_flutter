import 'package:Xcelerate/Screens/tasks_screen.dart';
import 'package:flutter/material.dart';
import 'package:Xcelerate/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'MemoPad.dart';
import 'package:Xcelerate/models/task_data.dart';
import 'package:Xcelerate/Screens/add_task_screen.dart';
import 'package:Xcelerate/Screens/tasks_screen.dart';


void main() => runApp(MyApp());

class TasksScreen extends StatelessWidget {
   TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(), // Use create instead of builder
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}


