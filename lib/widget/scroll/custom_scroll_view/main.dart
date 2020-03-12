import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'sliver_app_bar.dart';
import 'sliver_to_box_adapter.dart';
import 'using_to_nested_tab_scroll.dart';

class CustomScrollViewExamples extends StatelessWidget {
  static final example = ExampleItem(
      title: 'CustomScrollView', widget: () => CustomScrollViewExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollView'),
      ),
      body: ExampleList(
        examples: [
          SliverAppBarTester.example,
          SliverToBoxAdapterExample.example,
          UsingToNestedTabScroll.example,
        ],
      ),
    );
  }
}
