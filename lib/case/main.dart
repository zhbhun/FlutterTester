import 'package:flutter/material.dart';
import '../ExampleLists.dart';
import './SimpleMaterialApp.dart' as SimpleMaterialApp;

final examples = [SimpleMaterialApp.example];

class Case extends StatelessWidget {
  static final example = ExampleItem(title: 'Case', widget: () => Case());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Case'),
        ),
        body: ExampleList(examples: examples));
  }
}
