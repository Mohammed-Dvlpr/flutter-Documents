import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<String> _fruits = ["apple", "banana", "orange", "dry fruits"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: ListView.builder(
        itemCount: _fruits.length,
        itemBuilder: (context, index) {
          final fruit = _fruits[index];
          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(_fruits[index]),
                    backgroundColor: Colors.amber,
                  ),
                );
              } else {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('saved')));
              }
            },
            key: ValueKey(fruit),
            background: Container(
              alignment: Alignment.centerLeft,
              color: Colors.red,
              child: Icon(Icons.delete),
            ),
            secondaryBackground: Container(
              alignment: Alignment.centerRight,
              child: Icon(Icons.save),
              color: Colors.green,
            ),
            child: Card(
              child: ListTile(
                  title: Center(
                child: Text(_fruits[index]),
              )),
            ),
          );
        },
      ),
    ));
  }
}
