import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class StackExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Stack', widget: () => StackExample());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        // body: ExampleList(examples: examples));
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                width: 250,
                height: 250,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 250,
                      height: 250,
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Colors.black.withAlpha(0),
                            Colors.black12,
                            Colors.black45
                          ],
                        ),
                      ),
                      child: Text(
                        "Foreground Text",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 250,
                height: 250,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 250,
                      height: 250,
                      color: Colors.red,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Text('bottom right'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
