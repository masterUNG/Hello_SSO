import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.android),
          Icon(Icons.apps),
          Icon(Icons.arrow_drop_down_circle)
        ],
        leading: Icon(Icons.arrow_back),
        title: Text('This is AppBar'),
      ),
    ),
  );

  runApp(app);
}
