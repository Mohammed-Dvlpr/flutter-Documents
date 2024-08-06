import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _MyApp(),
        appBar: AppBar(
          title: Text("Basic List"),
        ),
      ),
    );
  }
}

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        leading: Icon(Icons.map),
        title: Text('Map'),
      ),
      ListTile(
        leading: Icon(Icons.photo_album),
        title: Text('Album'),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text('phone'),
      )
    ]);
  }
}
