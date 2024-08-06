import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ScaffoldExample(),
    );
  }
}

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({super.key});

  @override
  State<ScaffoldExample> createState() => _ScaffoldExample();
}

class _ScaffoldExample extends State<ScaffoldExample> {
  int _count = 0;
  int count = 0;
  @override
  Widget build(BuildContext contect) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Scaffold Demo'),
            bottom: TabBar(
              tabs: const [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.settings)),
                Tab(icon: Icon(Icons.search)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Scaffold(
                body: Center(
                  child: Text('You have pressed the button $_count times..'),
                ),
                floatingActionButton: FloatingActionButton(
                    onPressed: () {
                      setState(
                        () => _count++,
                      );
                    },
                    tooltip: 'Increment',
                    child: Icon(Icons.add)),
              ),
              Scaffold(
                  body: Center(
                      child: Text(
                          ' This is Second Exampls of Scaffold view button clicked $count time')),
                  bottomNavigationBar: BottomAppBar(
                    shape: CircularNotchedRectangle(),
                    child: Container(
                      height: 60,
                    ),
                  ),
                  floatingActionButton: FloatingActionButton(
                      onPressed: () => setState(() => count++),
                      child: Icon(Icons.add)),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerDocked),
              Center(
                child: Text('page 3'),
              ),
            ],
          ),
        ));
  }
}
