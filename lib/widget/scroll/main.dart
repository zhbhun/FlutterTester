import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './custom_scroll_view/main.dart';
import './GridView/main.dart';
import './ListView//main.dart';
import './NestedScrollView/main.dart';
import './RefreshIndicator/main.dart';
import 'scroll_controller/main.dart';
import 'single_child_scrollView/main.dart';
import 'scroll_physics/main.dart';

class ScrollExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Scroll', widget: () => ScrollExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll'),
      ),
      body: ExampleList(
        examples: [
          CustomScrollViewExamples.example,
          GridViewExamples.example,
          ListViewExamples.example,
          NestedScrollViewExamples.example,
          RefreshIndicatorExamples.example,
          ScrollControllerExamples.example,
          SingleChildScrollViewExamples.example,
          ScrollPhysicsExamples.example,
        ],
      ),
    );
  }
}
