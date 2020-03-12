import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class FlexExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Flex', widget: () => FlexExample());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flex',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flex'),
        ),
        // body: ExampleList(examples: examples));
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //# mainAxisSize
              Row(
                children: <Widget>[Text('default')],
              ),
              Row(
                children: <Widget>[Text('max')],
                mainAxisSize: MainAxisSize.max,
              ),
              Row(
                children: <Widget>[Text('min')],
                mainAxisSize: MainAxisSize.min,
              ),
              //# mainAxisAlignment
              Row(
                children: <Widget>[Text('1'), Text('2'), Text('3')],
              ),
              Row(
                children: <Widget>[Text('1'), Text('2'), Text('3')],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              Row(
                children: <Widget>[Text('1'), Text('2'), Text('3')],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              Row(
                children: <Widget>[Text('1'), Text('2'), Text('3')],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
              Row(
                children: <Widget>[Text('1'), Text('2'), Text('3')],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              Row(
                children: <Widget>[Text('1'), Text('2'), Text('3')],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
              //# crossAxisAlignment
              Row(
                children: <Widget>[
                  Container(
                      height: 30, child: Text('fluter'), color: Colors.red),
                  Container(
                      height: 60, child: Text('fluter'), color: Colors.blue),
                  Container(
                      height: 90, child: Text('fluter'), color: Colors.green),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      height: 30,
                      child: Text('flutter'),
                      color: Colors.red,
                      alignment: Alignment.center),
                  Container(
                      height: 60,
                      child: Text('flutter'),
                      color: Colors.blue,
                      alignment: Alignment.center),
                  Container(
                      height: 90,
                      child: Text('flutter'),
                      color: Colors.green,
                      alignment: Alignment.center),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 30,
                    child: Text('flutter'),
                    color: Colors.red,
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 60,
                    child: Text('flutter'),
                    color: Colors.blue,
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 90,
                    child: Text('flutter'),
                    color: Colors.green,
                    alignment: Alignment.center,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              Row(
                children: <Widget>[
                  Container(
                      height: 30,
                      child: Text('flutter'),
                      color: Colors.red,
                      alignment: Alignment.center),
                  Container(
                      height: 60,
                      child: Text('flutter'),
                      color: Colors.blue,
                      alignment: Alignment.center),
                  Container(
                      height: 90,
                      child: Text('flutter'),
                      color: Colors.green,
                      alignment: Alignment.center),
                ],
                crossAxisAlignment: CrossAxisAlignment.end,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Hey!',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Futura',
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Hey!',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Futura',
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Hey!',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Futura',
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Hey!',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Futura',
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Hey!',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Futura',
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Hey!',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Futura',
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100,
                    child: Text('1', style: TextStyle(fontSize: 20)),
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    child: Text('2', style: TextStyle(fontSize: 40)),
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    child: Text('3', style: TextStyle(fontSize: 60)),
                    color: Colors.green,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Container(
                    height: 100,
                    child: Text('1', style: TextStyle(fontSize: 20)),
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    child: Text('2', style: TextStyle(fontSize: 40)),
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    child: Text('3', style: TextStyle(fontSize: 60)),
                    color: Colors.green,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(height: 30, child: Text('a'), color: Colors.red),
                  Container(height: 60, child: Text('b'), color: Colors.blue),
                  Container(height: 90, child: Text('c'), color: Colors.green),
                ],
                // crossAxisAlignment: CrossAxisAlignment.stretch,
              ),
              //# flexiable
              Row(
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 1,
                    child: Container(
                      width: 80,
                      child: Text('flutter'),
                      color: Colors.red,
                      alignment: Alignment.center,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 1,
                    child: Container(
                      width: 100,
                      child: Text('flutter'),
                      color: Colors.blue,
                      alignment: Alignment.center,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 1,
                    child: Container(
                      width: 120,
                      child: Text('flutter'),
                      color: Colors.green,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(
                      width: 80,
                      child: Text('flutter'),
                      color: Colors.red,
                      alignment: Alignment.center,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(
                      width: 100,
                      child: Text('flutter'),
                      color: Colors.blue,
                      alignment: Alignment.center,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(
                      width: 120,
                      child: Text('flutter'),
                      color: Colors.green,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 80,
                    child: Text('flutter'),
                    color: Colors.red,
                    alignment: Alignment.center,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(
                      width: 100,
                      child: Text('flutter'),
                      color: Colors.blue,
                      alignment: Alignment.center,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 2,
                    child: Container(
                      width: 120,
                      child: Text('flutter'),
                      color: Colors.green,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              //# expanded
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: 80,
                      child: Text('flutter'),
                      color: Colors.red,
                      alignment: Alignment.center,
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Text('flutter'),
                    color: Colors.blue,
                    alignment: Alignment.center,
                  ),
                  Container(
                    width: 120,
                    child: Text('flutter'),
                    color: Colors.green,
                    alignment: Alignment.center,
                  ),
                ],
              ),
              //# SizedBox
              Row(
                children: <Widget>[
                  SizedBox(width: 100),
                  SizedBox(
                    width: 200,
                    child: Container(
                      width: 80,
                      child: Text('flutter'),
                      color: Colors.red,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              //# Spacer

              Row(
                children: <Widget>[
                  Spacer(flex: 1),
                  Container(
                    width: 80,
                    child: Text('flutter'),
                    color: Colors.red,
                    alignment: Alignment.center,
                  ),
                ],
              ),
              //# overflow
              Row(
                children: <Widget>[
                  FlutterLogo(),
                  Text(
                      'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.'),
                  Icon(Icons.sentiment_very_satisfied),
                ],
              ),
              Row(
                children: <Widget>[
                  FlutterLogo(),
                  Expanded(
                    child: Text(
                        'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.'),
                  ),
                  Icon(Icons.sentiment_very_satisfied),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
