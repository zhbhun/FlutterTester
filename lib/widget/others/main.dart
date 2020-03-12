import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'opacity.dart';

class Others extends StatelessWidget {
  static final example = ExampleItem(title: 'Others', widget: () => Others());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Others'),
      ),
      body: ExampleList(
        examples: [
          OpacityTester.example,
        ],
      ),
    );
  }
}
