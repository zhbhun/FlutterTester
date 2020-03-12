/* @see https://flutter.dev/docs/cookbook/lists/floating-app-bar */
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

final _items = List<String>.generate(10000, (i) => "Item $i");

class LongListExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Long List', widget: () => LongListExample());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long List'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${_items[index]}'),
          );
        },
      ),
    );
  }
}
