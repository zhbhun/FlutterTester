import 'package:flutter/material.dart';

class ExampleList extends StatelessWidget {
  final List<ExampleItem> examples;

  ExampleList({this.examples});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: examples.map((item) {
      return ListTile(
        title: Text(item.title),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => item.widget()),
          );
        },
      );
    }).toList());
  }
}

typedef WidgetGenerator = Widget Function();

class ExampleItem {
  String title;
  WidgetGenerator widget;

  ExampleItem({String title, WidgetGenerator widget}) {
    this.title = title;
    this.widget = widget;
  }
}
