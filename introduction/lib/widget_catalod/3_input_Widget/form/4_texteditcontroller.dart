import 'package:flutter/material.dart';

/// Flutter code sample for [TextEditingController].

void main() => runApp(const TextEditingControllerExampleApp());

class TextEditingControllerExampleApp extends StatelessWidget {
  const TextEditingControllerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextEditingControllerExample(),
    );
  }
}

class TextEditingControllerExample extends StatefulWidget {
  const TextEditingControllerExample({super.key});

  @override
  State<TextEditingControllerExample> createState() =>
      _TextEditingControllerExampleState();
}

class _TextEditingControllerExampleState
    extends State<TextEditingControllerExample> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final String newtext = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: newtext,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: TextFormField(
          controller: _controller,
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ),
    );
  }
}
