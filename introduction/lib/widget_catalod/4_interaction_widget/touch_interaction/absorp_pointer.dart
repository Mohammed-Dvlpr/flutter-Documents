import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: ElevatedButton(onPressed: () {}, child: null),
          ),
          SizedBox(
            width: 100,
            height: 200,
            child: AbsorbPointer(
              absorbing: true,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {},
                  child: null),
            ),
          )
        ],
      )),
    );
  }
}
