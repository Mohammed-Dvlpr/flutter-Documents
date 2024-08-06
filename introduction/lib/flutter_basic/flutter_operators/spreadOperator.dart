import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Container(
          width: 200,
          color: Colors.amberAccent.shade100,
          alignment: FractionalOffset.center,
          child: Container(
            alignment: Alignment.center,
            child: ListView(children: [
              ..._widgetLists(),
              SizedBox(
                height: 20,
              ),
              makeCenter('Ten'),
              makeCenter('Nine'),
              makeCenter('Eight'),
              makeCenter('Seven'),
              makeCenter('Six'),
              makeCenter('Five'),
              makeCenter('Four'),
              makeCenter('Three'),
              makeCenter('Two'),
              makeCenter('one'),
            ]),
          ),
        ),
      )),
    );
  }
}

Widget makeCenter(String text) {
  return Center(
    child: Text(text),
  );
}

List<Widget> _widgetLists() {
  return [
    makeCenter('one'),
    makeCenter('Two'),
    makeCenter('Three'),
    makeCenter('Four'),
    makeCenter('Five'),
    makeCenter('Six'),
    makeCenter('Seven'),
    makeCenter('Eight'),
    makeCenter('Nine'),
    makeCenter('Ten'),
  ];
}
