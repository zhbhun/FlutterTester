/**
 * reverse 控制滚动视图的阅读方向，如果 reverse 是 false，则滚动视图初始化的时候滚动位置在末尾
 */
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class ReverseTester extends StatelessWidget {
  static final example = ExampleItem(
    title: 'reverse',
    widget: () => ReverseTester(),
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var i = 0; i < 1000; i++) {
      children.add(Text('$i'));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('reverse'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              reverse: true,
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
