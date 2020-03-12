import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class CheetsheetExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Cheetsheet', widget: () => CheetsheetExample());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cheetsheet',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.lightGreen[600],
      ),
      home: _HomePage(),
    );
  }
}

class _ColorItem extends StatelessWidget {
  Color color;
  String title;

  _ColorItem(this.color, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title, style: TextStyle(fontSize: 20)),
          Container(
            margin: EdgeInsets.only(right: 10),
            color: color,
            width: 50,
            height: 50,
          ),
        ],
      ),
    );
  }
}

class _TextItem extends StatelessWidget {
  String value;
  String title;
  Color color;
  TextStyle style;


  _TextItem({this.value, this.title, this.color = Colors.black, this.style});

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 16, color: color);
    if (style != null) {
      textStyle = style;
    }
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title, style: TextStyle(fontSize: 20)),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(left: 20),
              width: 100,
              constraints: BoxConstraints(minHeight: 50),
              child: Text(
                value != null ? value : 'flutter',
                style: textStyle,
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cheetsheet'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _TextItem(
              value: theme.brightness.toString(),
              title: 'brightness',
            ),
            _TextItem(
              value: theme.accentColorBrightness.toString(),
              title: 'accentColorBrightness',
            ),
            _ColorItem(theme.primaryColor, 'primaryColor'),
            _ColorItem(theme.accentColor, 'accentColor'),
            _ColorItem(theme.backgroundColor, 'backgroundColor'),
            _TextItem(
              title: 'iconTheme',
              color: theme.iconTheme.color,
            ),
            _TextItem(
              title: 'textTheme.body1',
              style: theme.textTheme.body1,
            ),
            _TextItem(
              title: 'textTheme.body2',
              style: theme.textTheme.body2,
            ),
            _TextItem(
              title: 'textTheme.title',
              style: theme.textTheme.title,
            ),
            _TextItem(
              title: 'textTheme.subtitle',
              style: theme.textTheme.subtitle,
            ),
            _TextItem(
              title: 'textTheme.headline',
              style: theme.textTheme.headline,
            ),
            _TextItem(
              title: 'textTheme.subhead',
              style: theme.textTheme.subhead,
            ),
            _TextItem(
              title: 'textTheme.caption',
              style: theme.textTheme.caption,
            ),
            _TextItem(
              title: 'textTheme.caption',
              style: theme.textTheme.caption,
            ),
            _TextItem(
              title: 'textTheme.button',
              style: theme.textTheme.button,
            ),
            _TextItem(
              title: 'textTheme.display1',
              style: theme.textTheme.display1,
            ),
            _TextItem(
              title: 'textTheme.display2',
              style: theme.textTheme.display2,
            ),
            _TextItem(
              title: 'textTheme.display3',
              style: theme.textTheme.display3,
            ),
            _TextItem(
              title: 'textTheme.display4',
              style: theme.textTheme.display4,
            ),
            _TextItem(
              title: 'textTheme.overline',
              style: theme.textTheme.overline,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: 0,
      ),
    );
  }
}
