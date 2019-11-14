import 'package:flutter/material.dart';
import './architecture/main.dart';
import './case/main.dart';
import './ExampleLists.dart';

final examples = [
  Architecture.example,
  Case.example,
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
