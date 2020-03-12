import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'demo1.dart';

class SafeAreaExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'SafeArea', widget: () => SafeAreaExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SafeArea'),
      ),
      body: ExampleList(
        examples: [
          Demo1.example,
        ],
      ),
    );
  }
}
