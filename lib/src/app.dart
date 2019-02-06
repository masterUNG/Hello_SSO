import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  
  int counter = 0;
  List<String> contents = ['https://via.placeholder.com/600/92c952'];

  readJSON() async {

    counter += 1; 
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var jsonReceive = json.decode(response.body);
    contents.add(jsonReceive['url']);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: contents.length,
          itemBuilder: (context, counter) {
            return Image.network(contents[counter]);
          },
        ),
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
              readJSON();
            });
          },
        ),
      ),
    );
  }
}
