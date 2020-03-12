/* @see https://flutter.dev/docs/cookbook/lists/floating-app-bar */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'package:english_words/english_words.dart';

class CupertinoExample extends StatefulWidget {
  static final example =
      ExampleItem(title: 'Cupertino', widget: () => CupertinoExample());

  @override
  _CupertinoExampleState createState() {
    return _CupertinoExampleState();
  }
}

class _CupertinoExampleState extends State<CupertinoExample> {
  List<String> items = [];

  @override
  void initState() {
    super.initState();
    _setData();
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
    return CupertinoApp(
        home: CupertinoPageScaffold(
            child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(largeTitle: Text('Cupertino')),
        CupertinoSliverRefreshControl(
          onRefresh: _refreshData,
        ),
        SliverSafeArea(
          top: false,
          sliver: SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 12),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Text('${items[index]}');
                },
                childCount: items.length,
              ),
            ),
          ),
        ),
      ],
    )));
  }
}
