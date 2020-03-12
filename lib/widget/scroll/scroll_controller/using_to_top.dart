import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class UsingToTop extends StatefulWidget {
  static final example = ExampleItem(
    title: 'Using to top',
    widget: () => UsingToTop(),
  );

  @override
  _UsingToTopState createState() {
    return _UsingToTopState();
  }
}

class _UsingToTopState extends State<UsingToTop> {
  ScrollController _controller = new ScrollController();
  bool _showToTop = false;

  @override
  void initState() {
    super.initState();
    this._controller.addListener(() {
      print(this._controller.offset); //打印滚动位置
      if (this._controller.offset < 1000 && this._showToTop) {
        setState(() {
          this._showToTop = false;
        });
      } else if (this._controller.offset >= 1000 && this._showToTop == false) {
        setState(() {
          this._showToTop = true;
        });
      }
    });
  }

  @override
  void dispose() {
    this._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollNotification'),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 1000,
          itemExtent: 50.0,
          controller: this._controller,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("$index"),
            );
          },
        ),
      ),
      floatingActionButton: !this._showToTop
          ? null
          : FloatingActionButton(
              child: Icon(Icons.arrow_upward),
              onPressed: () {
                this._controller.animateTo(
                      .0,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease,
                    );
              },
            ),
    );
  }
}
