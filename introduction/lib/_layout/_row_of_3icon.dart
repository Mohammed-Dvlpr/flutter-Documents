import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Mytesting());
}

class Mytesting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2)),
              width: 400,
              height: 80,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    allColumn(),
                  ],
                ),
              )),
        ),
      ),
    );
  }

  Widget allColumn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [
          Icon(
            Icons.call,
            color: Colors.blue,
          ),
          Container(child: Text("CALL", style: TextStyle(color: Colors.blue))),
        ]),
        Column(
          children: [
            Icon(Icons.router, color: Colors.blue),
            Container(
                child: Text(
              "ROUTR",
              style: TextStyle(color: Colors.blue),
            )),
          ],
        ),
        Column(
          children: [
            Icon(Icons.share, color: Colors.blue),
            Container(
                child: Text(
              "SHARE",
              style: TextStyle(color: Colors.blue),
            )),
          ],
        )
      ],
    );
  }
}
