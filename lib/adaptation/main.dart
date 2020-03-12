import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './platform/main.dart';

final examples = [Platform.example];

class Adaptation extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Adaptation', widget: () => Adaptation());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adaptation'),
        ),
        body: ExampleList(examples: examples));
  }
}
