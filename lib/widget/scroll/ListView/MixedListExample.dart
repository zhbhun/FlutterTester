/* @see https://flutter.dev/docs/cookbook/lists/floating-app-bar */
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

// The base class for the different types of items the list can contain.
abstract class _ListItem {}

// A ListItem that contains data to display a heading.
class _HeadingItem implements _ListItem {
  final String heading;

  _HeadingItem(this.heading);
}

// A ListItem that contains data to display a message.
class _MessageItem implements _ListItem {
  final String sender;
  final String body;

  _MessageItem(this.sender, this.body);
}

final _items = List<_ListItem>.generate(
  1000,
  (i) => i % 6 == 0
      ? _HeadingItem("Heading $i")
      : _MessageItem("Sender $i", "Message body $i"),
);

class MixedListExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Mixed List', widget: () => MixedListExample());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mixed List'),
      ),
      body: ListView.builder(
        // Let the ListView know how many items it needs to build.
        itemCount: _items.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = _items[index];

          if (item is _HeadingItem) {
            return ListTile(
              title: Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              ),
            );
          } else if (item is _MessageItem) {
            return ListTile(
              title: Text(item.sender),
              subtitle: Text(item.body),
            );
          }

          return null;
        },
      ),
    );
  }
}
