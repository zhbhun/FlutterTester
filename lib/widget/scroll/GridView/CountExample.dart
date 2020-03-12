/* @see https://flutter.dev/docs/cookbook/lists/grid-lists.html */
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class CountExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'GridView.count', widget: () => CountExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.count'),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
      ),
    );
  }
}
