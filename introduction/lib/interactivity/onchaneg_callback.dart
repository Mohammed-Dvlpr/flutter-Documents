import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: _MyApp());
  }
}

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLastValue);
  }

  void _printLastValue() {
    final text = myController.text;
    print('Last Value : $text (${text.characters.length})');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          onChanged: (text) {
            print('first text fiels : $text (${text.characters.length})');
          },
        ),
        // textfiel 2 with controler
        TextField(
          controller: myController,
        )
      ]),
    );
  }
}
