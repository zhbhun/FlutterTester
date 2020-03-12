import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class ClipOvalExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'ClipOval', widget: () => ClipOvalExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClipOval')),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                color: Colors.grey,
                child: ClipOval(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                color: Colors.grey,
                child: ClipOval(
                  child: Container(
                    width: 50,
                    height: 100,
                    color: Colors.red,
                  ),
                ),
              ),
              Container(
                color: Colors.grey,
                child: ClipOval(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
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
