import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: style, onPressed: () {}, child: Text('Enable')),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                  style: style,
                  onPressed: () {},
                  child: Text('OutLined Button')),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color(0xFFFFFFFF)),
                    left: BorderSide(color: Color(0xFFFFFFFF)),
                    right: BorderSide(),
                    bottom: BorderSide(),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 2.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Color(0xFFDFDFDF)),
                      left: BorderSide(color: Color(0xFFDFDFDF)),
                      right: BorderSide(color: Color(0xFF7F7F7F)),
                      bottom: BorderSide(color: Color(0xFF7F7F7F)),
                    ),
                    color: Color(0xFFBFBFBF),
                  ),
                  child: const Text('OK',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF000000))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
