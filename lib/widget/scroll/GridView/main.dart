import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './CountExample.dart';
import './CountHorizontalExample.dart';

final List<ExampleItem> _examples = [
  CountExamples.example,
  CountHorizontalExample.example
];

class GridViewExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'GridView', widget: () => GridViewExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: ExampleList(examples: _examples),
    );
  }
}
