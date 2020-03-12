import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './Cheetsheet.dart';
import './DynamicTheme.dart';
import './Hello.dart';

final List<ExampleItem> _examples = [
  HelloExample.example,
  CheetsheetExample.example,
  DymamicTheme.example,
];

class ThemeExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Theme', widget: () => ThemeExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Theme'),
        ),
        body: ExampleList(examples: _examples));
  }
}


