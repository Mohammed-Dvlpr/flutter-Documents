import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
              title: Text('Tab Bar Demo'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.store_mall_directory_rounded)),
                  Tab(icon: Icon(Icons.search)),
                ],
              )),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text('Home Tab')),
              Center(child: Text('Store Tab')),
              Center(child: Text('Search Tab'))
            ],
          ),
        ),
      ),
    );
  }
}
