import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class TabViewKeepAliveExample extends StatelessWidget {
  static final example = ExampleItem(
    title: 'TabViewKeepAliveExample',
    widget: () => TabViewKeepAliveExample(),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabViewKeepAliveExample'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Page1State();
  }
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'page1',
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Page2State();
  }
}

class _Page2State extends State<Page2> with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'page2',
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class Page3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Page3State();
  }
}

class _Page3State extends State<Page3> with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'page3',
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
