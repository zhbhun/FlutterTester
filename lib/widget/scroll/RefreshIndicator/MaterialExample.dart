/* @see https://flutter.dev/docs/cookbook/lists/floating-app-bar */
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'package:english_words/english_words.dart';

class MaterialExample extends StatefulWidget {
  static final example =
      ExampleItem(title: 'Material', widget: () => MaterialExample());

  @override
  _MaterialExampleState createState() {
    return _MaterialExampleState();
  }
}

class _MaterialExampleState extends State<MaterialExample> {
  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  List<String> items = [];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 0), () {
      _androidRefreshKey.currentState.show();
    });
  }

  void _setData() {
    items = List<String>.generate(10000,
        (i) => "Item $i: ${generateWordPairs().take(1).toList()[0].asString}");
  }

  Future<void> _refreshData() {
    return Future.delayed(
      // This is just an arbitrary delay that simulates some network activity.
      const Duration(seconds: 2),
      () => setState(() => _setData()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Material'), actions: [
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () async => await _androidRefreshKey.currentState.show(),
        ),
      ]),
      body: RefreshIndicator(
        key: _androidRefreshKey,
        onRefresh: _refreshData,
        child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 12),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
