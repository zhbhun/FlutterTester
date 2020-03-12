import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './CustomDatePickerExample.dart';
import './CustomPickerExample.dart';
import './CupertinoDatePickerExample.dart';
import './CupertinoPickerExample.dart';
import './Temp.dart';

final List<ExampleItem> examples = [
  CustomDatePickerExample.example,
  CustomPickerExample.example,
  CupertinoDatePickerExample.example,
  CupertinoPickerExample.example,
  FlutterPickerExample.example,
];

class FormExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Form', widget: () => FormExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: ExampleList(examples: examples));
  }
}
