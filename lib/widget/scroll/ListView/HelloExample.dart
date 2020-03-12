/* @see https://flutter.dev/docs/cookbook/lists/floating-app-bar */
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class HelloExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Hello', widget: () => HelloExample());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
    );
  }
}
