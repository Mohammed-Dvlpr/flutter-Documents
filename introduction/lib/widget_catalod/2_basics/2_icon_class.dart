import 'package:flutter/material.dart';

void main() {
  runApp(MyIcon());
}

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: SizedBox(
          height: 500,
          width: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 50.0,
                semanticLabel: 'Text to announce in accesable mode',
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 50.0,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 50.0,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
