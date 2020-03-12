/**
 * 控制滚动视图的
 */
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class DirectionTester extends StatelessWidget {
  static final example = ExampleItem(
    title: 'direction',
    widget: () => DirectionTester(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Direction'),
      ),
      body: ExampleList(
        examples: [
          TestHorizontal.example,
          TestVertical.example,
        ],
      ),
    );
  }
}


class TestVertical extends StatelessWidget {
  static final example = ExampleItem(
    title: 'vertical',
    widget: () => TestVertical(),
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var i = 0; i < 1000; i++) {
      children.add(Text('$i'));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('vertical'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TestHorizontal extends StatelessWidget {
  static final example = ExampleItem(
    title: 'horizontal',
    widget: () => TestHorizontal(),
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var i = 0; i < 1000; i++) {
      children.add(Text('$i'));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('horizontal'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
