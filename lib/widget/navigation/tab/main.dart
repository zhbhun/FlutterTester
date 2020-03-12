import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'material_bottom_navigation_bar/main.dart';
import 'material_tab_bar/main.dart';

class TabExamples extends StatelessWidget {
  static final example = ExampleItem(title: 'Tab', widget: () => TabExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab'),
      ),
      body: ExampleList(
        examples: [
          MaterialBottomNavigationBarExamples.example,
          MaterialTabBarExamples.example,
        ],
      ),
    );
  }
}
