import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class KeepScrollOffsetTester extends StatelessWidget {
  static final example = ExampleItem(
    title: 'keepScrollOffset',
    widget: () => KeepScrollOffsetTester(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('keepScrollOffset'),
      ),
      body: ExampleList(
        examples: [
          TestDefault.example,
          TestFalse.example,
          TestTrue.example,
          TestPerformance.example,
        ],
      ),
    );
  }
}

class TestDefault extends StatefulWidget {
  static final example = ExampleItem(
    title: 'default',
    widget: () => TestDefault(),
  );

  @override
  _TestDefaultState createState() {
    return _TestDefaultState();
  }
}

class _TestDefaultState extends State<TestDefault> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo1')),
      body: this._visible
          ? Scrollbar(
              child: ListView.builder(
                itemCount: 1000,
                itemExtent: 50.0,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("$index"),
                  );
                },
              ),
            )
          : Text('hidden'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () {
          setState(() {
            this._visible = !this._visible;
          });
        },
      ),
    );
  }
}

class TestKeepScrollOffset extends StatefulWidget {
  final bool enable;

  TestKeepScrollOffset(this.enable);

  @override
  _TestKeepScrollOffsetState createState() {
    return _TestKeepScrollOffsetState();
  }
}

class _TestKeepScrollOffsetState extends State<TestKeepScrollOffset> {
  ScrollController _controller;
  bool _visible = true;
  PageStorageKey _key;

  @override
  void initState() {
    super.initState();
    this._controller = ScrollController(
      initialScrollOffset: 500,
      keepScrollOffset: this.widget.enable,
    );
    this._key = PageStorageKey(1);
  }

  @override
  void dispose() {
    this._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('true')),
      body: this._visible
          ? Scrollbar(
              child: ListView.builder(
                key: this._key,
                itemCount: 1000,
                itemExtent: 50.0,
                controller: this._controller,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("$index"),
                  );
                },
              ),
            )
          : Text('hidden'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () {
          setState(() {
            this._visible = !this._visible;
          });
        },
      ),
    );
  }
}

class TestFalse extends StatelessWidget {
  static final example = ExampleItem(
    title: 'false',
    widget: () => TestFalse(),
  );

  @override
  Widget build(BuildContext context) {
    return TestKeepScrollOffset(false);
  }
}

class TestTrue extends StatelessWidget {
  static final example = ExampleItem(
    title: 'true',
    widget: () => TestTrue(),
  );

  @override
  Widget build(BuildContext context) {
    return TestKeepScrollOffset(true);
  }
}

class TestPerformance extends StatefulWidget {
  static final example = ExampleItem(
    title: 'performance',
    widget: () => TestPerformance(),
  );

  @override
  _TestPerformanceState createState() {
    return _TestPerformanceState();
  }
}

class _TestPerformanceState extends State<TestPerformance> {
  ScrollController _controller;
  bool _visible = true;
  PageStorageKey _key;

  @override
  void initState() {
    super.initState();
    this._controller = ScrollController(
      initialScrollOffset: 0,
      keepScrollOffset: true,
    );
    this._key = PageStorageKey(1);
  }

  @override
  void dispose() {
    this._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var random = new Random();
    return Scaffold(
      appBar: AppBar(title: Text('performance')),
      body: this._visible
          ? Scrollbar(
              child: ListView.builder(
                key: this._key,
                itemCount: 1000,
                controller: this._controller,
                itemBuilder: (context, index) {
                  return Container(
                    height: max(100, random.nextInt(300).toDouble()),
                    alignment: Alignment.center,
                    child: Text("$index"),
                  );
                },
              ),
            )
          : Text('hidden'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () {
          setState(() {
            this._visible = !this._visible;
          });
        },
      ),
    );
  }
}
