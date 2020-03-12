import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './Demo1.dart';
import './Demo2.dart';

final List<ExampleItem> _examples = [
  Demo1.example,
  Demo2.example,
];

class NestedScrollViewExamples extends StatelessWidget {
  static final example = ExampleItem(
      title: 'NestedScrollView', widget: () => NestedScrollViewExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NestedScrollView'),
      ),
      body: ExampleList(examples: _examples),
    );
  }
}
