import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './Alignment.dart';
import './Demo1.dart';
import './Flex.dart';
import './Stack.dart';

final List<ExampleItem> examples = [
  AlignmentExample.example,
  FlexExample.example,
  Demo1.example,
  StackExample.example,
];

class LayoutExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Layout', widget: () => LayoutExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Layout'),
        ),
        body: ExampleList(examples: examples));
  }
}
