import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class ClipRectExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'ClipRect', widget: () => ClipRectExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClipRect')),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 50,
                color: Colors.grey,
                child: ClipRect(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                height: 50,
                color: Colors.grey,
                child: ClipRect(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.grey,
                child: ClipRect(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Text('123456789012345678901234567890'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
