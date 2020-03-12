import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class Demo2 extends StatefulWidget {
  static final example = ExampleItem(title: 'Demo2', widget: () => Demo2());

  @override
  _LifeCycleState createState() {
    return _LifeCycleState();
  }
}

class _LifeCycleState extends State<Demo2> {
  bool display = false;
  int count = 0;

  toggleDisplay() {
    setState(() {
      display = !display;
    });
  }

  increase() {
    // setState(() {
    //   count += 1;
    // });
    print('xxx');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Demo2',
        home: Scaffold(
            appBar: AppBar(
                // Title
                title: Text('Demo2')),
            body: Column(
              children: <Widget>[
                RaisedButton(child: Text('增加'), onPressed: this.increase),
                display
                    ? RaisedButton(
                        child: Text('切换'), onPressed: this.toggleDisplay)
                    : _Temp(count),
                !display
                    ? RaisedButton(
                        child: Text('切换'), onPressed: this.toggleDisplay)
                    : _Temp(count),
              ],
            )));
  }
}

class _Temp extends StatefulWidget {
  final int count;
  _Temp(this.count);

  @override
  _TempState createState() {
    return _TempState();
  }
}

class _TempState extends State<_Temp> {
  int count = 0;

  _TempState() {
    print('>> constuctor');
  }

  @override
  void initState() {
    super.initState();
    print('>> initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('>> didChangeDependencies');
  }

  @override
  void didUpdateWidget(_Temp oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('>> didUpdateWidget ${oldWidget.count} -> ${widget.count}');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('>> deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('>> dispose $mounted');
  }

  increese() {
    setState(() {
      print('>> setState');
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('>> build');
    return Column(
      children: <Widget>[
        Text('lifecycle: ${widget.count}'),
        RaisedButton(child: Text(count.toString()), onPressed: this.increese)
      ],
    );
  }
}
