import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppState(),
    );
  }
}

class MyAppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
                'Type below to autocomplete the following possible results:${AutoCompleteExample._kOptions}'),
            SizedBox(
              height: 20,
            ),
            AutoCompleteExample(),
          ],
        ),
      ),
    );
  }
}

class AutoCompleteExample extends StatelessWidget {
  static List<String> _kOptions = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete(
      optionsBuilder: (textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        } else {
          return _kOptions.where((String option) {
            return option.contains(textEditingValue.text.toLowerCase());
          });
        }
      },
      onSelected: (String selected) {
        debugPrint('you Selected $selected');
      },
    );
  }
}
