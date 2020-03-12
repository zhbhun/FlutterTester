import 'package:flutter/material.dart';
import '../ExampleLists.dart';
import './adapter/main.dart';
import './basic/main.dart';
import './container/main.dart';
import './custom//main.dart';
import './form//main.dart';
import './navigation/main.dart';
import './layout/main.dart';
import './scroll/main.dart';
import './others/main.dart';

class WidgetExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Widget', widget: () => WidgetExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget'),
      ),
      body: ExampleList(
        examples: [
          AdapterExamples.example,
          BasicExamples.example,
          ContainerExamples.example,
          CustomExamples.example,
          FormExamples.example,
          LayoutExamples.example,
          NavigationExamples.example,
          ScrollExamples.example,
          Others.example,
        ],
      ),
    );
  }
}
