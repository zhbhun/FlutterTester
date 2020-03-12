import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'safe_area/main.dart';

class AdapterExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Adapter', widget: () => AdapterExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adapter'),
      ),
      body: ExampleList(
        examples: [
          SafeAreaExamples.example,
        ],
      ),
    );
  }
}
