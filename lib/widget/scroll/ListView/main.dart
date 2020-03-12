import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './FloatBarExample.dart';
import './HelloExample.dart';
import './HorizontalExample.dart';
import './MixedListExample.dart';
import './LongListExample.dart';

final List<ExampleItem> _examples = [
  HelloExample.example,
  LongListExample.example,
  FloatBarExample.example,
  HorizontalExample.example,
  MixedListExample.example,
];

class ListViewExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'ListView', widget: () => ListViewExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ExampleList(examples: _examples),
    );
  }
}
