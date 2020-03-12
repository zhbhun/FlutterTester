import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class AlignmentExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Alignment', widget: () => AlignmentExample());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alignment'),
        ),
        // body: ExampleList(examples: examples));
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //# Align
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.green,
                      width: 1,
                      style: BorderStyle.solid,
                    )),
                    child: FlutterLogo(
                      size: 60,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.green,
                      width: 1,
                      style: BorderStyle.solid,
                    )),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: FlutterLogo(
                        size: 60,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.green,
                      width: 1,
                      style: BorderStyle.solid,
                    )),
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: FlutterLogo(
                        size: 60,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.green,
                      width: 1,
                      style: BorderStyle.solid,
                    )),
                    child: Align(
                      alignment: FractionalOffset(0.5, 0.5),
                      child: FlutterLogo(
                        size: 60,
                      ),
                    ),
                  ),
                ],
              ),
              //# Center
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.green,
                      width: 1,
                      style: BorderStyle.solid,
                    )),
                    child: Text('flutter'),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.green,
                      width: 1,
                      style: BorderStyle.solid,
                    )),
                    child: Center(child: Text('flutter')),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.green,
                      width: 1,
                      style: BorderStyle.solid,
                    )),
                    child: Center(
                      child: Text('flutter'),
                      widthFactor: 4,
                      heightFactor: 2,
                    ),
                  ),
                ],
              ),
              //# TODO: Baseline
            ],
          ),
        ),
      ),
    );
  }
}
