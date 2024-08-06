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
  bool _lightIsOn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.lightbulb,
                  color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
                  size: 80,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      _lightIsOn = !_lightIsOn;
                    },
                  );
                },
                child: Container(
                  color: Colors.yellow.shade600,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _lightIsOn ? 'Light is on' : 'Light is off',
                    ),
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
