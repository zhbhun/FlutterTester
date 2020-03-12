import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class ControllerTester extends StatefulWidget {
  static final example =
      ExampleItem(title: 'controller', widget: () => ControllerTester());

  @override
  _ControllerTesterState createState() {
    return _ControllerTesterState();
  }
}

class _ControllerTesterState extends State<ControllerTester> {
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    this._controller = ScrollController(initialScrollOffset: 100);
    this._controller.addListener(() {
      print('>> controller ${this._controller.offset}');
    });
  }

  @override
  void dispose() {
    super.dispose();
    this._controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      FlatButton(
        onPressed: () {
          this._controller.animateTo(
                500,
                duration: Duration(microseconds: 500),
                curve: Curves.ease,
              );
        },
        child: Text('animateTo 500'),
      ),
      FlatButton(
        onPressed: () {
          this._controller.jumpTo(500);
        },
        child: Text('jumpTo 500'),
      ),
    ];
    for (var i = 0; i < 1000; i++) {
      children.add(Text('$i'));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Controller'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              controller: this._controller,
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
