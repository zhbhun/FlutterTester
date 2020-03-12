import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './MaterialExample.dart';
import './CupertinoExample.dart';

final List<ExampleItem> _examples = [
  MaterialExample.example,
  CupertinoExample.example
];

class RefreshIndicatorExamples extends StatelessWidget {
  static final example = ExampleItem(
      title: 'RefreshIndicator', widget: () => RefreshIndicatorExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RefreshIndicator'),
      ),
      body: ExampleList(examples: _examples),
    );
  }
}
