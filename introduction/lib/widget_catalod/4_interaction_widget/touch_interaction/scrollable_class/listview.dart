import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyApp(),
    );
  }
}

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  var arrName = ['one', 'two', 'three', 'four', 'five'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 300,
      child: DefaultTabController(
          initialIndex: 0,
          length: 4,
          child: Scaffold(
            appBar: AppBar(
                title: const Text('List View Types'),
                bottom: TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.list),
                  ),
                  Tab(
                    icon: Icon(Icons.list_alt),
                  ),
                  Tab(
                    icon: Icon(Icons.list_alt_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.list_alt_sharp),
                  ),
                ])),
            body: TabBarView(
              children: [
                simpleListView(),
                listViewBuilder(),
                listviewSeparated(),
                listTile()
              ],
            ),
          )),
    );
  }

  simpleListView() {
    return SizedBox(
      height: 500,
      width: 300,
      child: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text('one', style: TextStyle(fontSize: 21)),
            Text('two', style: TextStyle(fontSize: 21)),
            Text(
              'three',
              style: TextStyle(fontSize: 21),
            ),
            Text(
              'four',
              style: TextStyle(fontSize: 21),
            ),
            Text(
              'five',
              style: TextStyle(fontSize: 21),
            ),
            Text(
              'six',
              style: TextStyle(fontSize: 21),
            )
          ],
        ),
      ),
    );
  }

  listViewBuilder() {
    return SizedBox(
      height: 500,
      width: 300,
      child: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              '$index',
              style: TextStyle(fontSize: 21),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }

  listviewSeparated() {
    return SizedBox(
      height: 500,
      width: 300,
      child: Center(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
              '$index',
              style: TextStyle(fontSize: 21),
            );
          },
          itemCount: 10,
          separatorBuilder: (context, index) {
            return Divider(height: 20, thickness: 2);
          },
        ),
      ),
    );
  }

  listTile() {
    return SizedBox(
      height: 500,
      width: 300,
      child: Center(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('${index + 1}'),
              title: Text(arrName[index]),
              subtitle: Text(arrName[index]),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: arrName.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
              thickness: 2,
            );
          },
        ),
      ),
    );
  }
}
