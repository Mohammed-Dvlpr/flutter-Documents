import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.light(),
        theme: ThemeData(colorSchemeSeed: Colors.brown),
        home: _MyApp());
  }
}

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 8, color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          width: 350,
          height: 700,
          child: Scaffold(
            backgroundColor: Color.fromARGB(255, 162, 103, 233),
            appBar: AppBar(
                backgroundColor: Colors.grey[600],
                title: const Text('TODO APP'),
                actions: [
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {},
                  ),
                ]),
            body: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(todos[index].title),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailScreen(todo: todos[index]))),
                  ),
                );
              },
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex, // Use the _currentIndex here
              onTap: (index) {},

              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.share), label: 'share'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Todo {
  final String title;
  final String discription;

  Todo(this.title, this.discription);
}

final todos = List.generate(
  20,
  (index) => Todo(
      "Todo $index", 'A discription of what need to be done for Todo $index'),
);

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 8, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                width: 350,
                height: 700,
                child: Scaffold(
                  backgroundColor: Color.fromARGB(255, 162, 103, 233),
                  appBar: AppBar(
                    backgroundColor: Colors.grey[600],
                    title: Text('Detail Screen'),
                  ),
                  body: Center(
                    child: Text(todo.discription),
                  ),
                ))));
  }
}
