import 'package:flutter/material.dart';
import './ExampleLists.dart';
import './architecture/main.dart';
import './adaptation/main.dart';
import './case/main.dart';
import './network//main.dart';
import './widget/main.dart';
import './theme/main.dart';

final examples = [
  Adaptation.example,
  Architecture.example,
  Case.example,
  Network.example,
  ThemeExamples.example,
  WidgetExamples.example,
];

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tester',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: ExampleList(examples: examples));
  }
}
