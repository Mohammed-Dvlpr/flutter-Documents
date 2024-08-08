import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: _MyApp());
  }
}

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('What number comes next in the sequence?'),
          const Text('1, 1, 2, 3, 5, 8...?'),
          TextField(
            controller: _controller,
            onChanged: (text) async {
              if (text != '13') {
                return;
              }
              await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('13 is write answer '),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'))
                      ],
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
