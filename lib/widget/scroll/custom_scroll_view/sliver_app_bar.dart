import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class SliverAppBarTester extends StatelessWidget {
  static final example = ExampleItem(
    title: 'SliverAppBar',
    widget: () => SliverAppBarTester(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollView'),
      ),
      body: ExampleList(
        examples: [
          TestSliverAppBarAnimation.example1,
          TestSliverAppBarAnimation.example2,
          TestSliverAppBarAnimation.example3,
          TestSliverAppBarAnimation.example4,
          TestSliverAppBarAnimation.example5,
          TestSliverAppBarAnimation.example6,
          TestActions.example,
          TestFlexibleSpace.example,
        ],
      ),
    );
    ;
  }
}

class TestSliverAppBarAnimation extends StatelessWidget {
  static final example1 = ExampleItem(
    title: 'floating=false, pinned=false, snap=false',
    widget: () => TestSliverAppBarAnimation(
      floating: false,
      pinned: false,
      snap: false,
    ),
  );

  static final example2 = ExampleItem(
    title: 'floating=true, pinned=false, snap=false',
    widget: () => TestSliverAppBarAnimation(
      floating: true,
      pinned: false,
      snap: false,
    ),
  );

  static final example3 = ExampleItem(
    title: 'floating=true, pinned=false, snap=true',
    widget: () => TestSliverAppBarAnimation(
      floating: true,
      pinned: false,
      snap: true,
    ),
  );

  static final example4 = ExampleItem(
    title: 'floating=true, pinned=true, snap=false',
    widget: () => TestSliverAppBarAnimation(
      floating: true,
      pinned: true,
      snap: false,
    ),
  );

  static final example5 = ExampleItem(
    title: 'floating=true, pinned=true, snap=true',
    widget: () => TestSliverAppBarAnimation(
      floating: true,
      pinned: true,
      snap: true,
    ),
  );

  static final example6 = ExampleItem(
    title: 'floating=false, pinned=true, snap=false',
    widget: () => TestSliverAppBarAnimation(
      floating: false,
      pinned: true,
      snap: false,
    ),
  );

  final bool floating;
  final bool pinned;
  final bool snap;

  TestSliverAppBarAnimation({this.floating, this.pinned, this.snap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: this.floating,
              pinned: this.pinned,
              snap: this.snap,
              expandedHeight: 250,
              title: const Text('Animation'),
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text('list item $index'),
                  );
                },
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TestActions extends StatelessWidget {
  static final example = ExampleItem(
    title: 'actiions',
    widget: () => TestActions(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.access_alarm),
                onPressed: () {},
              ),
            ],
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('list item $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}

class TestFlexibleSpace extends StatelessWidget {
  static final example = ExampleItem(
    title: 'flexibleSpace',
    widget: () => TestFlexibleSpace(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('FlexibleSpace'),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('list item $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
