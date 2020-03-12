import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class ClipRRectExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'ClipRRect', widget: () => ClipRRectExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ClipRRect')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text('BorderRadius.zero'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.zero,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Text('radius'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: Text('circular'),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 40)),
                      child: Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.center,
                        color: Colors.red,
                        child: Text('elliptical'),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.lerp(
                          Radius.circular(10),
                          Radius.circular(40),
                          1,
                        ),
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.center,
                        color: Colors.red,
                        child: Text('lerp'),
                      ),
                    ),
                  ),
                ],
              ),
              Text('BorderRadius.only'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(40)),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.elliptical(10, 40)),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.elliptical(40, 10)),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.lerp(
                          Radius.circular(10),
                          Radius.circular(40),
                          1,
                        ),
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Text('BorderRadius.all'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Text('BorderRadius.horizontal'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(40),
                        right: Radius.circular(0),
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(0),
                        right: Radius.circular(40),
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(40),
                        right: Radius.circular(40),
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Text('BorderRadius.vertical'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                        bottom: Radius.circular(0),
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(0),
                        bottom: Radius.circular(40),
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                        bottom: Radius.circular(40),
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Text('BorderRadius.circular'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Text('BorderRadius.lerp'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.lerp(
                        BorderRadius.circular(0),
                        BorderRadius.circular(40),
                        0,
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.lerp(
                        BorderRadius.circular(0),
                        BorderRadius.circular(40),
                        0.5,
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: ClipRRect(
                      borderRadius: BorderRadius.lerp(
                        BorderRadius.circular(0),
                        BorderRadius.circular(40),
                        1,
                      ),
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
