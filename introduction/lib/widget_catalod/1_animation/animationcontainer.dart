import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.red : Colors.greenAccent,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          alignment: selected ? Alignment.center : Alignment.bottomLeft,
          child: FlutterLogo(
            size: 75,
          ),
        ),
      ),
    );
  }
}
