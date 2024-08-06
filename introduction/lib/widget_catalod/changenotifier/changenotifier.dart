import "package:flutter/material.dart";
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => Favorites(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MtyAppState();
}

class _MtyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'My favorite fruit is ${Provider.of<Favorites>(context).fruit}'),
        ),
        body: Center(
          child: Column(
            children: [
              FuritButton("Apples"),
              FuritButton("Bananas"),
              FuritButton("Oranges"),
            ],
          ),
        ),
      ),
    );
  }
}

class FuritButton extends StatelessWidget {
  final String fruit;

  FuritButton(this.fruit);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            Provider.of<Favorites>(context, listen: false).changeFruit(fruit);
          },
          child: Text(fruit)),
    );
  }
}

class Favorites extends ChangeNotifier {
  String fruit = 'unknown';

  void changeFruit(String newFruits) {
    fruit = newFruits;
    notifyListeners();
  }
}
