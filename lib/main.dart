import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(actions: <Widget>[Icon(Icons.android)],
        leading: Icon(Icons.arrow_back),
        title: Text('This is AppBar'),
      ),
    ),
  );

  runApp(app);
}