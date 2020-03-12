import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class ScrollbarTester extends StatelessWidget {
  static final example = ExampleItem(
    title: 'scrollbar',
    widget: () => ScrollbarTester(),
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var i = 0; i < 1000; i++) {
      children.add(Text('$i'));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollbar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: children,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
