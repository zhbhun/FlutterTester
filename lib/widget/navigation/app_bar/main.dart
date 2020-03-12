import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class AppBarExamples extends StatelessWidget {
  static final example = ExampleItem(title: 'AppBar', widget: () => AppBarExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: ExampleList(
        examples: [
          TestFlexibleSpace.example,
        ],
      ),
    );
  }
}

class TestFlexibleSpace extends StatelessWidget {
  static final example = ExampleItem(
    title: 'flexibleSpace',
    widget: () => TestFlexibleSpace(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlexibleSpace'),
        flexibleSpace: const FlexibleSpaceBar(
          title: Text('FlexibleSpace'),
        ),
      ),
      body: ListView.builder(
        itemCount: 1000,
        itemExtent: 50.0,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.lightBlue[100 * (index % 9)],
            child: Text('list item $index'),
          );
        },
      ),
    );
  }
}
