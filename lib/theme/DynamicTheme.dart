import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class DymamicTheme extends StatefulWidget {
  static final example =
      ExampleItem(title: 'Dynamic Theme', widget: () => DymamicTheme());
  @override
  _DymamicTheme createState() => new _DymamicTheme();
}

class _DymamicTheme extends State<DymamicTheme> {
  Color _themeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Theme(
      data: ThemeData(
        primarySwatch: _themeColor,
        iconTheme: IconThemeData(color: _themeColor),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text("主题测试")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.favorite),
                Icon(Icons.airport_shuttle),
                Text("  颜色跟随主题")
              ],
            ),
            Theme(
              data: themeData.copyWith(
                iconTheme: themeData.iconTheme.copyWith(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.favorite),
                  Icon(Icons.airport_shuttle),
                  Text("  颜色固定黑色")
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              setState(
            () => _themeColor =
                _themeColor == Colors.teal ? Colors.blue : Colors.teal,
          ),
          child: Icon(Icons.palette),
        ),
      ),
    );
  }
}
