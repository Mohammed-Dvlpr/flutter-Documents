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
              title: const Text('TODO APP'),
              actions: [
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {},
                ),
              ],
              leading: Builder(builder: (context) {
                return IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: Icon(Icons.menu));
              }),
            ),

            drawer: Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                    ),
                    child: Text('Drawer header'),
                  ),
                  ListTile(
                    title: Text("item 1"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text("item 2"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),

            // body to design
            body: Container(),
          ),
        ),
      ),
    );
  }
}
