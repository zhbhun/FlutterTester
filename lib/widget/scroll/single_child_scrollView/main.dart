import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'controller.dart';
import 'direction.dart';
import 'padding.dart';
import 'physics.dart';
import 'reverse.dart';
import 'scrollbar.dart';
import 'using_with_column.dart';

class SingleChildScrollViewExamples extends StatelessWidget {
  static final example = ExampleItem(
    title: 'SingleChildScrollView',
    widget: () => SingleChildScrollViewExamples(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: ExampleList(
        examples: [
          ControllerTester.example,
          DirectionTester.example,
          PaddingTester.example,
          PhysicsTester.example,
          ReverseTester.example,
          ScrollbarTester.example,
          UsingWithColumn.example,
        ],
      ),
    );
  }
}
