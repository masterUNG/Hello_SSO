import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        body: Text('counter ==> $counter'),
        appBar: AppBar(
          actions: <Widget>[
            Icon(Icons.android),
            Icon(Icons.apps),
            Icon(Icons.arrow_drop_down_circle)
          ],
          leading: Icon(Icons.arrow_back),
          title: Text('This is AppBar'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_circle_outline),
          onPressed: () {
            setState(() {
              counter += 1;
              print('counter = $counter');
            });
          },
        ),
      ),
    );
  }
}
