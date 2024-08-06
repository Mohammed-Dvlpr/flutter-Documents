import 'package:flutter/material.dart';

void main() {
  runApp(AnimatedAlignClass());
}

class AnimatedAlignClass extends StatefulWidget {
  AnimatedAlignClass({super.key});

  @override
  State<AnimatedAlignClass> createState() => _AnimatedAlignClass();
}

class _AnimatedAlignClass extends State<AnimatedAlignClass> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Animated Align Demo'),
            ),
            body: GestureDetector(
              onTap: () {
                setState(() {
                  // Change the alignment of the child widget
                  selected = !selected;
                });
                print("button is clikcked ");
              },
              child: Center(
                child: Container(
                  width: 500,
                  height: 500,
                  color: Colors.red,
                  child: AnimatedAlign(
                      alignment:
                          selected ? Alignment.topRight : Alignment.bottomLeft,
                      duration: Duration(seconds: 5),
                      curve: Curves.fastOutSlowIn,
                      child: FlutterLogo(
                        size: 50.0,
                      )),
                ),
              ),
            )));
  }
}
