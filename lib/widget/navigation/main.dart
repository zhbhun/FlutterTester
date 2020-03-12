import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'app_bar/main.dart';
import 'tab/main.dart';

class NavigationExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Navigation', widget: () => NavigationExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: ExampleList(
        examples: [
          AppBarExamples.example,
          TabExamples.example,
        ],
      ),
    );
  }
}
