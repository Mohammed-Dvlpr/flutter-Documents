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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" First Route Screen "),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondRoute())),
            child: Text('Second page')),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is SwcondRoute"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('BAck to first Screen'))),
    );
  }
}
