import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './UsingHTTPGet.dart';

final List<ExampleItem> examples = [
  UsingHTTPGet.example,
];

class Network extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Network', widget: () => Network());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Network'),
        ),
        body: ExampleList(examples: examples));
  }
}


