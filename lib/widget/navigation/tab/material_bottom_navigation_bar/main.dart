import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'Demo1.dart';

class MaterialBottomNavigationBarExamples extends StatelessWidget {
  static final example = ExampleItem(
    title: 'Material Bottom Navigation Bar',
    widget: () => MaterialBottomNavigationBarExamples(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Bottom Navigation Bar'),
      ),
      body: ExampleList(
        examples: [
          Demo1.example,
        ],
      ),
    );
  }
}
