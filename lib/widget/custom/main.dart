import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
// import './sliver_app_bar.dart';
// import './Demo2.dart';
import './Lifecycle.dart';

class CustomExamples extends StatelessWidget {
  static final List<ExampleItem> examples = [
    LifeCycle.example,
    // Demo1.example,
    // Demo2.example
  ];

  static final example =
      ExampleItem(title: 'Custom', widget: () => CustomExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Custom'),
        ),
        body: ExampleList(examples: examples));
  }
}
