import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class Demo1 extends StatefulWidget {
  static final example = ExampleItem(title: 'Demo1', widget: () => Demo1());

  @override
  _Demo1State createState() {
    return _Demo1State();
  }
}

class _Test extends StatelessWidget {
  final String value;

  const _Test(
    this.value, {
    Key key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(value);
  }
}

class _Demo1State extends State<Demo1> {
  bool display = false;

  toggleDisplay() {
    setState(() {
      display = !display;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Demo1',
        home: Scaffold(
            appBar: AppBar(
                // Title
                title: Text('Demo1')),
            body: Column(
              children: <Widget>[
                const _Test('测试'),
                Text(display.toString()),
                RaisedButton(child: Text('切换'), onPressed: this.toggleDisplay),
              ],
            )));
  }
}

