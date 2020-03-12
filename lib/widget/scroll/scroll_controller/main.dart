import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'keep_scroll_offset.dart';
import 'positions.dart';
import 'scroll_notification.dart';
import 'using_to_top.dart';

class ScrollControllerExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'ScrollController', widget: () => ScrollControllerExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollController'),
      ),
      body: ExampleList(
        examples: [
          KeepScrollOffsetTester.example,
          PositionsTester.example,
          ScrollNotificationTester.example,
          UsingToTop.example,
        ],
      ),
    );
  }
}
