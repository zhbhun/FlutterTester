import 'package:flutter/material.dart';
import '../../ExampleLists.dart';
import './Counter.dart' as Counter;
import './Shopper/main.dart';

final examples = [
  Counter.example,
  Shopper.example,
];

class Provider extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Provider', widget: () => Provider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: ExampleList(examples: examples),
    );
  }
}
