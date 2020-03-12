import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './PlatformDesign/main.dart';

final examples = [PlatformDesign.example];

class Platform extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Platform', widget: () => Platform());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Platform'),
        ),
        body: ExampleList(examples: examples));
  }
}
