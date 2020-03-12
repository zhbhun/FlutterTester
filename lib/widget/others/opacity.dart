import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class OpacityTester extends StatelessWidget {
  static final example = ExampleItem(
    title: 'Opacity',
    widget: () => OpacityTester(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Opacity(
              opacity: 1,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text('1'),
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: 0.8,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text('0.8'),
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: 0.6,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text('0.6'),
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: 0.4,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text('0.4'),
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: 0.2,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text('0.2'),
              ),
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: 0,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Text('0'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
