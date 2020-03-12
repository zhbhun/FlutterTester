import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class PositionsTester extends StatefulWidget {
  static final example = ExampleItem(
    title: 'positions',
    widget: () => PositionsTester(),
  );

  @override
  _PositionsTesterState createState() {
    return _PositionsTesterState();
  }
}

class _PositionsTesterState extends State<PositionsTester> {
  ScrollController _controller = new ScrollController();
  bool _showToTop = false;

  @override
  void initState() {
    super.initState();
    this._controller.addListener(() {
      double pixels =this._controller.positions.elementAt(0).pixels;
      print(pixels); //打印滚动位置
      if (pixels < 1000 && this._showToTop) {
        setState(() {
          this._showToTop = false;
        });
      } else if (pixels >= 1000 && this._showToTop == false) {
        setState(() {
          this._showToTop = true;
        });
      }
      for (int index = 0; index < this._controller.positions.length; index ++) {
        var position = this._controller.positions.elementAt(index);
        if (position.pixels != pixels) {
          position.jumpTo(pixels);
        }
      }
      // this._controller.jumpTo(pixels);
    });
  }

  @override
  void dispose() {
    this._controller.dispose();
    super.dispose();
  }

  Widget buildScroll() {
    return Container(
      width: 100,
      child: Scrollbar(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('positions'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          this.buildScroll(),
          this.buildScroll(),
          this.buildScroll(),
        ],
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
