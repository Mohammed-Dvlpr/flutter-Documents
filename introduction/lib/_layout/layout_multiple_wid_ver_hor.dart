import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          width: 1000,
          decoration: BoxDecoration(border: Border.all(width: 2)),
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  width: 400,
                  child: leftColumn,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 600,
                    width: 500,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORjH5-QpQSX58wStO33S7NQLuNnXDfWeNzA&s',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  final leftColumn = Container(
    padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
    child: Column(
      children: [titleText, subtitle, rating(), iconList],
    ),
  );

  static Widget stars() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(
          Icons.star,
          color: Colors.black,
        ),
        const Icon(
          Icons.star,
          color: Colors.black,
        )
      ],
    );
  }

  static Widget rating() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(border: Border.all(width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            stars(),
            const Text(
              '170 Reviews',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  static const descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );

  static final iconList = DefaultTextStyle.merge(
    style: descTextStyle,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(width: 1)),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    ),
  );

  static final titleText = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 400,
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Text(
        textAlign: TextAlign.center,
        'Strawberry Pavlova',
        style: TextStyle(color: Colors.black, fontSize: 30),
      ),
    ),
  );

  static final subtitle = Container(
      decoration: BoxDecoration(border: Border.all(width: 1)),
      height: 200,
      width: 380,
      child: Text(
        textAlign: TextAlign.center,
        'Strawberry Pavlova is a popular Australian and New Zealand dessert named after the Russian ballerina Anna Pavlova.'
        'Its a meringue-based cake made with a crisp outer shell and a soft, marshmallow-like interior, typically topped with whipped cream and fresh strawberries',
        style: TextStyle(color: Colors.black, fontSize: 20),
      ));
}
