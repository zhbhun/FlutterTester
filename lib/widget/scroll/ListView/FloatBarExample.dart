/* @see https://flutter.dev/docs/cookbook/lists/floating-app-bar */
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class FloatBarExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Float Bar', widget: () => FloatBarExample());

  @override
  Widget build(BuildContext context) {
    final title = 'Floating App Bar';
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // Add the app bar to the CustomScrollView.
          SliverAppBar(
            // Provide a standard title.
            title: Text(title),
            // Allows the user to reveal the app bar if they begin scrolling
            // back up the list of items.
            floating: true,
            // Display a placeholder widget to visualize the shrinking size.
            flexibleSpace: Placeholder(),
            // Make the initial height of the SliverAppBar larger than normal.
            expandedHeight: 200,
          ),
          // Next, create a SliverList
          SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildBuilderDelegate(
              // The builder function returns a ListTile with a title that
              // displays the index of the current item.
              (context, index) => ListTile(title: Text('Item #$index')),
              // Builds 1000 ListTiles
              childCount: 1000,
            ),
          ),
        ],
      ),
    );
  }
}
