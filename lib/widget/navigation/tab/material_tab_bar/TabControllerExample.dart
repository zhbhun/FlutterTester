import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class TabControllerExample extends StatefulWidget {
  static final example = ExampleItem(
    title: 'TabController',
    widget: () => TabControllerExample(),
  );

  const TabControllerExample({Key key}) : super(key: key);

  @override
  _TabControllerExampleState createState() => _TabControllerExampleState();
}

class _TabControllerExampleState extends State<TabControllerExample>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabController'),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          final String label = tab.text.toLowerCase();
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'This is the $label tab',
                  style: const TextStyle(fontSize: 36),
                ),
              ),
              FlatButton(
                child: Text('goto another tab'),
                onPressed: () {
                  this
                      ._tabController
                      .animateTo((myTabs.indexOf(tab) + 1) % myTabs.length);
                },
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
