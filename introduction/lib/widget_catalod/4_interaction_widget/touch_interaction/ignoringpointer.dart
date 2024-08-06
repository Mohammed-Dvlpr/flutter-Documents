import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const _MyApp(),
      ),
    );
  }
}

class _MyApp extends StatefulWidget {
  const _MyApp({super.key});

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  bool ignoringvalue = false;

  void setIgnoring(bool newignoringvalue) {
    setState(() {
      ignoringvalue = newignoringvalue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('You now ignoringPointer is $ignoringvalue !!'),
          IgnorePointer(
              ignoring: ignoringvalue,
              child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('You pressed the button')));
                  },
                  child: Text('Click Here'))),
          FilledButton(
              onPressed: () {
                setIgnoring(!ignoringvalue);
              },
              child: Text(ignoringvalue
                  ? ' Set ignoring to "False"'
                  : 'Set ignoring to "True"'))
        ],
      ),
    );
  }
}
