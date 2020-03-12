import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './ClipOvalExamples.dart';
import './ClipRectExamples.dart';
import './ClipRRectExamples.dart';
import './ClipPathExamples.dart';
import './OverflowExamples.dart';

final List<ExampleItem> _examples = [
  ClipOvalExamples.example,
  ClipRectExamples.example,
  ClipRRectExamples.example,
  ClipPathExamples.example,
  OverflowExamples.example,
];

class ClipExamples extends StatelessWidget {
  static final example =
  ExampleItem(title: 'Clip', widget: () => ClipExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip'),
      ),
      body: ExampleList(examples: _examples ),
    );
  }
}
