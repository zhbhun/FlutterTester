import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class UsingAppLifecycleState extends StatefulWidget {
  static final example = ExampleItem(
      title: 'AppLifecycleState',
      widget: () => MaterialApp(
            home: UsingAppLifecycleState(),
          ));

  @override
  _UsingAppLifecycleStateState createState() => _UsingAppLifecycleStateState();
}

class _UsingAppLifecycleStateState extends State<UsingAppLifecycleState>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('state = $state');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'AppLifecycleState',
        home: Scaffold(
            appBar: AppBar(
              title: Text('AppLifecycleState'),
            ),
            body: Center()));
  }
}
