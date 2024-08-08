import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        theme: ThemeData(colorSchemeSeed: Colors.brown),
        home: _MyApp());
  }
}

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          width: 350,
          height: 700,
          child: Scaffold(
            backgroundColor: Color.fromARGB(255, 162, 103, 233),
            appBar: AppBar(
                backgroundColor: Colors.grey[600],
                title: const Text('Return Data Demo'),
                actions: [
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {},
                  ),
                ]),
            // body to design
            body: Center(
              child: SelectionButton(),
            ),
          ),
        ),
      ),
    );
  }
}

class SelectionButton extends StatefulWidget {
  const SelectionButton({super.key});

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _navigateAndDisplaySection(context);
        },
        child: Text(' Pick an option , any option'));
  }
}

Future<void> _navigateAndDisplaySection(context) async {
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => SelectionScreen()));
  // When a BuildContext is used from a StatefulWidget, the mounted property
  // must be checked after an asynchronous gap.
  if (!context.mounted) return;

  // After the Selection Screen returns a result, hide any previous snackbars
  // and show the new result.
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
}

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () {
                // Pop here with "Yep"...
                Navigator.pop(context, 'Yep!');
              },
              child: const Text('Yep!'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () {
                // Pop here with "Nope"...
                Navigator.pop(context, 'Yep!');
              },
              child: const Text('Nope.'),
            ),
          )
        ],
      ),
    );
  }
}
