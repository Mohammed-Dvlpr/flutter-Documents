import 'package:flutter/material.dart';

/// Flutter code sample for [Dismissible].

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Dismissible Sample')),
        body: const _MyApp(),
      ),
    );
  }
}

class _MyApp extends StatefulWidget {
  const _MyApp({super.key});

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Draggable<int>(
          data: 10,
          child: initFaceContainer(),
          feedback: onTunchingDragContainer(),
          childWhenDragging: afterContainerLeave(),
        ),
        DragTarget<int>(
          builder: (
            BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,
          ) {
            return Container(
              width: 100,
              height: 100,
              color: Colors.grey,
              child:
                  Center(child: Text('Value is updating to : $acceptedData')),
            );
          },
          onAcceptWithDetails: (DragTargetDetails<int> details) {
            setState(() {
              acceptedData += details.data;
            });
          },
        ),
      ],
    );
  }

  initFaceContainer() {
    return Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: Text(" This is init Face of container "));
  }

  onTunchingDragContainer() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.orangeAccent.shade700,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Icon(Icons.run_circle),
    );
  }

  afterContainerLeave() {
    return Container(
      color: Colors.grey,
      width: 100,
      height: 100,
      child: Text('After Draging Container'),
    );
  }
}
