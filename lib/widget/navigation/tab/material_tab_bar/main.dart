import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'DefaultTabControllerExample.dart';
import 'TabControllerExample.dart';
import 'TabViewKeepAliveExample.dart';

class MaterialTabBarExamples extends StatelessWidget {
  static final example = ExampleItem(
    title: 'Material Tab Bar',
    widget: () => MaterialTabBarExamples(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Tab Bar'),
      ),
      body: ExampleList(
        examples: [
          DefaultTabControllerExample.example,
          TabControllerExample.example,
          TabViewKeepAliveExample.example,
        ],
      ),
    );
  }
}
