import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class ScrollPhysicsExamples extends StatelessWidget {
  static final example = ExampleItem(
    title: 'ScrollPhysics',
    widget: () => ScrollPhysicsExamples(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollPhysics'),
      ),
      body: ExampleList(
        examples: [
          Demo1.example,
        ],
      ),
    );
  }
}

class Demo1 extends StatefulWidget {
  static final example = ExampleItem(
    title: 'demo1',
    widget: () => Demo1(),
  );

  Demo1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Demo1State createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo1'),
      ),
      body: ListWheelScrollView.useDelegate(
        physics: BouncingScrollPhysics(),
//        physics: const FixedExtentScrollPhysics(),
        childDelegate: ListWheelChildListDelegate(
          children: List<Widget>.generate(
            600,
            (index) => ListTile(
              title: Text('item $index'),
            ),
          ),
        ),
        itemExtent: 100,
      ),
    );
  }
}
