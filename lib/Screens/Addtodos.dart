import 'package:Xcelerate/Screens/Addtodos.dart.';
import 'package:Xcelerate/Screens/MemoPad.dart';
import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class Addtodos extends StatefulWidget {
  const Addtodos({super.key});

  @override
  State<Addtodos> createState() => _AddtodosState();
}

class _AddtodosState extends State<Addtodos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.blue,

      ),
    );
  }
}

