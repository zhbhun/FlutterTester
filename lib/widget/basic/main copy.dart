import 'package:flutter/material.dart';
import '../../ExampleLists.dart';
import './Container.dart';
import './Image.dart';
import './Text.dart';

final List<ExampleItem> examples = [
  ContainerExample.example,
  ImageExample.example,
  TextExample.example,
];

class BasicExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Basic', widget: () => BasicExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic'),
        ),
        body: ExampleList(examples: examples));
  }
}
