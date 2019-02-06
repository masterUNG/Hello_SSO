import 'package:flutter/material.dart';

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    home: Scaffold(
      body: Text('This is Body'),
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
          print('You Click Floating');
        },
      ),
    ),
  );
  }

}