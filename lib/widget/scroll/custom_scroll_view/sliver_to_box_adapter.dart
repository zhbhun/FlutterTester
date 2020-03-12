/**
 * SliverToBoxAdapter 是一个与 CustomScrollView 组合使用的特殊 Widget，SliverToBoxAdapter 的子组件无论是否可见都会实例化。
 * 
 * @see https://api.flutter.dev/flutter/widgets/SliverToBoxAdapter-class.html
 */
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

Future<void> _refreshData() {
  return Future.delayed(
    // This is just an arbitrary delay that simulates some network activity.
    const Duration(seconds: 2),
    () => null,
  );
}

class SliverToBoxAdapterExample extends StatelessWidget {
  static final example = ExampleItem(
      title: 'SliverToBoxAdapter', widget: () => SliverToBoxAdapterExample());

  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SliverToBoxAdapter')),
      body: RefreshIndicator(
        key: _androidRefreshKey,
        onRefresh: _refreshData,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Image.asset(
                "assets/images/lake.jpg",
                fit: BoxFit.cover,
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
