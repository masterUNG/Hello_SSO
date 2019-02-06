import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  String urlJSON =
      "https://www.androidthai.in.th/sso/getFoodWhereIdMaster.php?isAdd=true&id=";
  int counter = 0;
  List<String> contents = ['counter ==> 0'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, int index) {
            return Text(contents[0]);
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
              counter += 1;
              print('counter = $counter');
            });
          },
        ),
      ),
    );
  }
}
