import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tester/ExampleLists.dart';

class UsingToNestedTabScroll extends StatelessWidget {
  static final example = ExampleItem(
    title: 'Using to nested tab scroll',
    widget: () => UsingToNestedTabScroll(),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Using to nested tab scroll'),
          elevation: 0,
        ),
        body: MyListViewBox(
          header: Container(
            height: 250,
            color: Colors.red,
            child: Text('FlexiableSpace'),
          ),
          fixedHeader: Container(
            color: Colors.blue,
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          child: Expanded(
            child: TabBarView(
              children: [
                _TabViewDemo(),
                _TabViewDemo(),
                _TabViewDemo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabViewDemo extends StatefulWidget {
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
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: 1000,
            itemExtent: 50.0,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('list item $index'),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class ListViewBoxModel extends ChangeNotifier {
  double _headerHeight;
  double _maxHeaderHeight;

  double get headerHeight => _headerHeight ?? maxHeaderHeight;

  double get maxHeaderHeight => _maxHeaderHeight;

  set maxHeaderHeight(maxHeaderHeight) {
    _maxHeaderHeight = maxHeaderHeight;
    notifyListeners();
  }

  set headerHeight(headerHeight) {
    _headerHeight = headerHeight;
    notifyListeners();
  }
}

class MyListViewBox extends StatefulWidget {
  final headerReverse;
  final Widget header;
  final Widget fixedHeader;
  final Widget child;

  MyListViewBox({
    Key key,
    this.headerReverse = false,
    this.header,
    this.fixedHeader,
    this.child,
  }) : super(key: key);

  @override
  _MyListViewBoxState createState() => _MyListViewBoxState();
}

class _MyListViewBoxState extends State<MyListViewBox> {
  ListViewBoxModel listViewBoxModel = ListViewBoxModel();

  Widget bindMoveEvent(Widget child) {
    if (child == null) {
      return child;
    }
    return Listener(
      child: child,
      onPointerMove: (PointerMoveEvent event) {
        double offset = event.delta.dy;
        double headerHeight = listViewBoxModel.headerHeight;

        headerHeight += offset;

        if (headerHeight < 0) {
          headerHeight = 0;
        }
        if (listViewBoxModel.maxHeaderHeight != null &&
            headerHeight > listViewBoxModel.maxHeaderHeight) {
          headerHeight = listViewBoxModel.maxHeaderHeight;
        }

        listViewBoxModel.headerHeight = headerHeight;
      },
    );
  }

  Widget getBody() {
    List<Widget> children = <Widget>[
      Consumer<ListViewBoxModel>(
        child: widget.header,
        builder: (context, model, child) {
          if (model.maxHeaderHeight == null) {
            // 异步获取高度
            Future.delayed(Duration(
              milliseconds: 0,
            )).then((e) {
              if (widget.header == null) {
                model.maxHeaderHeight = 0.0;
              } else if (model.maxHeaderHeight == null ||
                  model.maxHeaderHeight < context.size.height) {
                model.maxHeaderHeight = context.size.height;
              }
            });
          }
          if (model.headerHeight == null) {
            return Container(
              child: child,
            );
          }

          return Container(
            height: model.headerHeight,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: model.maxHeaderHeight,
                    child: child ?? Container(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ];

    if (widget.fixedHeader != null) {
      if (widget.headerReverse == true) {
        children.insert(0, widget.fixedHeader);
      } else {
        children.add(widget.fixedHeader);
      }
    }

    children.add(widget.child);

    return bindMoveEvent(
      Column(
        children: children,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListViewBoxModel>.value(
      value: listViewBoxModel,
      child: getBody(),
    );
  }
}
