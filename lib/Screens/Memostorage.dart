import 'package:flutter/material.dart';

class Memostorage extends StatefulWidget {
  @override
  State<Memostorage> createState() => _MemostorageState();
}
class _MemostorageState extends State<Memostorage> {
  @override
  Widget build(BuildContext context) {
    // Replace this with your actual widget tree
    return Scaffold(
      appBar: AppBar(
        title: Text('Memo Storage'),
      ),
      body: Center(
        child: Text('This is the Memo Storage page'),
      ),
    );
  }
}

