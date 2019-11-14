import 'package:flutter/material.dart';
import '../ExampleLists.dart';
import './provider/main.dart';

final examples = [Provider.example];

class Architecture extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Architecture', widget: () => Architecture());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Architecture'),
        ),
        body: ExampleList(examples: examples));
  }
}
