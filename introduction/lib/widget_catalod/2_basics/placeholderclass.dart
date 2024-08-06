import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
        child: SizedBox(
          width: 500,
          height: 900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Placeholder(
                fallbackWidth: 100,
                fallbackHeight: 100,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 90,
                height: 300,
                child: Placeholder(),
              ),
              SizedBox(
                height: 50,
              ),
              Placeholder(
                fallbackHeight: 100,
                fallbackWidth: 100,
              )
            ],
          ),
        ),
      )),
    );
  }
}
