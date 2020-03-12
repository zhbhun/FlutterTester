import 'dart:math';
import 'package:flutter/material.dart' hide RefreshIndicator;
import 'package:flutter_tester/ExampleLists.dart';
import './refresh_indicator.dart' show RefreshIndicator;

final List<String> _tabs = ['tab1', 'tab2', 'tab3'];

Future<void> _refreshData() {
  return Future.delayed(
    // This is just an arbitrary delay that simulates some network activity.
    const Duration(seconds: 2),
    () => null,
  );
}

class Demo1 extends StatelessWidget {
  static final example = ExampleItem(title: 'Demo1', widget: () => Demo1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: _tabs.length, // This is the number of tabs.
        child: RefreshIndicator(
          notificationPredicate: (_) => true, // 必须设置为 true 否则无法触发下拉刷新
          offset: 250, // 默认从顶部出现刷新指示器，设置偏移量后可以从 tab 栏下开始出现
          onRefresh: _refreshData,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              // These are the slivers that show up in the "outer" scroll view.
              return <Widget>[
                SliverOverlapAbsorber(
                  // This widget takes the overlapping behavior of the SliverAppBar,
                  // and redirects it to the SliverOverlapInjector below. If it is
                  // missing, then it is possible for the nested "inner" scroll view
                  // below to end up under the SliverAppBar even when the inner
                  // scroll view thinks it has not been scrolled.
                  // This is not necessary if the "headerSliverBuilder" only builds
                  // widgets that do not overlap the next sliver.
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  child: SliverAppBar(
                    title: const Text('Demo1'),
                    // This is the title in the app bar.
                    pinned: true,
                    expandedHeight: 250.0,
                    // The "forceElevated" property causes the SliverAppBar to show
                    // a shadow. The "innerBoxIsScrolled" parameter is true when the
                    // inner scroll view is scrolled beyond its "zero" point, i.e.
                    // when it appears to be scrolled below the SliverAppBar.
                    // Without this, there are cases where the shadow would appear
                    // or not appear inappropriately, because the SliverAppBar is
                    // not actually aware of the precise position of the inner
                    // scroll views.
                    forceElevated: innerBoxIsScrolled,
                    bottom: TabBar(
                      // These are the widgets to put in each tab in the tab bar.
                      tabs:
                          _tabs.map((String name) => Tab(text: name)).toList(),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              // These are the contents of the tab views, below the tabs.
              children: _tabs.map((String name) {
                return _TabViewDemo(name);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class _TabViewDemo extends StatefulWidget {
  final String name;

  _TabViewDemo(this.name);

  @override
  State<StatefulWidget> createState() {
    return _TabViewDemoState();
  }
}

class _TabViewDemoState extends State<_TabViewDemo>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var random = new Random();
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        // This Builder is needed to provide a BuildContext that is "inside"
        // the NestedScrollView, so that sliverOverlapAbsorberHandleFor() can
        // find the NestedScrollView.
        builder: (BuildContext context) {
          return CustomScrollView(
            // The "controller" and "primary" members should be left
            // unset, so that the NestedScrollView can control this
            // inner scroll view.
            // If the "controller" property is set, then this scroll
            // view will not be associated with the NestedScrollView.
            // The PageStorageKey should be unique to this ScrollView;
            // it allows the list to remember its scroll position when
            // the tab view is not on the screen.
            key: PageStorageKey<String>(this.widget.name),
            slivers: <Widget>[
              SliverOverlapInjector(
                // This is the flip side of the SliverOverlapAbsorber above.
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                // In this example, the inner scroll view has
                // fixed-height list items, hence the use of
                // SliverFixedExtentList. However, one could use any
                // sliver widget here, e.g. SliverList or SliverGrid.
                sliver: SliverList(
                  // The items in this example are fixed to 48 pixels
                  // high. This matches the Material Design spec for
                  // ListTile widgets.
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      // This builder is called for each child.
                      // In this example, we just number each list item.
                      return Container(
                        height: max(50, random.nextInt(100).toDouble()),
                        alignment: Alignment.center,
                        child: Text('$index'),
                      );
                    },
                    // The childCount of the SliverChildBuilderDelegate
                    // specifies how many children this inner list
                    // has. In this example, each tab has a list of
                    // exactly 30 items, but this is arbitrary.
                    childCount: 1000,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
