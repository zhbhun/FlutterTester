import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './clip/main.dart';

final List<ExampleItem> _examples = [
  ClipExamples.example,
];

class ContainerExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Container', widget: () => ContainerExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: ExampleList(examples: _examples),
    );
  }
}
