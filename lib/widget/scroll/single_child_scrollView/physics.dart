/**
 * 控制滚动视图的
 */
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class PhysicsTester extends StatelessWidget {
  static final example = ExampleItem(
    title: 'physics',
    widget: () => PhysicsTester(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('physics'),
      ),
      body: ExampleList(
        examples: [
          TestDefaultScrollPhysics.example,
          TestBouncingScrollPhysics.example,
          TestClampingScrollPhysics.example,
        ],
      ),
    );
  }
}

class TestDefaultScrollPhysics extends StatelessWidget {
  static final example = ExampleItem(
    title: 'Default',
    widget: () => TestDefaultScrollPhysics(),
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var i = 0; i < 1000; i++) {
      children.add(Text('$i'));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Default'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
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

class TestBouncingScrollPhysics extends StatelessWidget {
  static final example = ExampleItem(
    title: 'BouncingScrollPhysics',
    widget: () => TestBouncingScrollPhysics(),
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var i = 0; i < 1000; i++) {
      children.add(Text('$i'));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('BouncingScrollPhysics'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
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

class TestClampingScrollPhysics extends StatelessWidget {
  static final example = ExampleItem(
    title: 'ClampingScrollPhysics',
    widget: () => TestClampingScrollPhysics(),
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var i = 0; i < 1000; i++) {
      children.add(Text('$i'));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('ClampingScrollPhysics'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
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
