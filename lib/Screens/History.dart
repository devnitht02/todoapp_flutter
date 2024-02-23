import 'package:flutter/material.dart';

class Todo {
  final String text;
  final DateTime date;

  Todo({required this.text, required this.date});
}

class TodosPage extends StatefulWidget {
  @override
  _TodosPageState createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  List<Todo> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].text),
            subtitle: Text(todos[index].date.toString()),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                moveTodoToHistory(todos[index]);
                setState(() {
                  todos.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }

  void moveTodoToHistory(Todo todo) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HistoryPage(todo: todo)), // Pass todo object here
    );
  }
}

class HistoryPage extends StatelessWidget {
  final Todo todo;

  const HistoryPage({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Ensure that Scaffold is used here
      appBar: AppBar(
        title: Text('History'),
      ),
      body: SingleChildScrollView( // Wrap your Column with SingleChildScrollView
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Deleted Todo:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(todo.text),
              SizedBox(height: 10),
              Text('Date: ${todo.date.toString()}'),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TodosPage(),
  ));
}
