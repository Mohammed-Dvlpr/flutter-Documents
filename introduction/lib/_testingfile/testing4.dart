import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool ligthStatus = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lightbulb_outline_sharp,
                color: ligthStatus ? Colors.amberAccent.shade700 : Colors.black,
                size: 175,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    ligthStatus = !ligthStatus;
                  });
                },
                child: Container(
                  color: Colors.amberAccent.shade700,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(ligthStatus ? 'Light is On' : 'Light is off'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
