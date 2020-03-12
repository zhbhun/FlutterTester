import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';
import './CustomPicker.dart';

class CustomPickerExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'CustomPicker', widget: () => CustomPickerExample());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CustomPicker')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //# default
            Text('default'),
            Container(
              height: 215,
              child: CupertinoPicker(
                onSelectedItemChanged: (position) {
                  print('The position is $position');
                },
                itemExtent: 44,
                backgroundColor: Colors.white,
                children: [
                  Text('0'),
                  Text('1'),
                  Text('2'),
                  Text('3'),
                  Text('4'),
                  Text('5'),
                  Text('6'),
                  Text('7'),
                  Text('8'),
                  Text('9'),
                  Text('10'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
