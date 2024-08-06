import 'package:flutter/material.dart';
import 'package:namer_app/_simple_design/lightbulp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppState(),
    );
  }
}

class MyAppState extends StatefulWidget {
  @override
  State<MyAppState> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyAppState> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispost');
  }

  @override
  Widget build(BuildContext context) {
    print('build');

    return Scaffold(
      backgroundColor: Colors.amber.shade900,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LightBulp()),
              );
            },
            child: Text('Press me')),
      ),
    );
  }
}
