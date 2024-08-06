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
  String _name = 'huss';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 100,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Text(
                      overflow: TextOverflow.ellipsis,
                      'Hello $_name, how are you?')),
// ...

              SizedBox(
                height: 25,
              ),

              Container(
                width: 100,
                decoration: BoxDecoration(border: Border.all()),
                child: Text(
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    'Hello $_name, how are you?'),
              ),
              SizedBox(
                height: 25,
              ),

// ...

              Container(
                decoration: BoxDecoration(border: Border.all()),
                width: 100,
                child: Text(
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    'Hello $_name, how are you?'),
              ),
              SizedBox(
                height: 25,
              ),

// ... Rich Text

              Text.rich(
                TextSpan(
                  text: 'Hello', // default text style
                  children: <TextSpan>[
                    TextSpan(
                        text: ' beautiful ',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: 'how ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: 'are ',
                    ),
                    TextSpan(
                      text: 'you ',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
// second type
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Just',
                            style: DefaultTextStyle.of(context).style),
                        TextSpan(
                            text: 'Do',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: ' it! ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Icon(Icons.nine_k),
                ],
              ),

              SizedBox(
                height: 25,
              ),

// ...  Selection Area

              SelectionArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Selectable text'),
                    SizedBox(height: 20),
// disable the selection
                    SelectionContainer.disabled(
                        child: Text('Non-selectable text')),
                    SizedBox(height: 20),
                    Text('Selectable text'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
