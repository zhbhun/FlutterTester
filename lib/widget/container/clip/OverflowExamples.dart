import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class OverflowExamples extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Overflow', widget: () => OverflowExamples());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Overflow')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.grey,
              child: Container(
                width: 200.0,
                height: 200.0,
                padding: const EdgeInsets.all(5.0),
                color: Colors.green,
                child: OverflowBox(
                  alignment: Alignment.topLeft,
                  maxWidth: 300.0,
                  maxHeight: 500.0,
                  child: Container(
                    width: 400.0,
                    height: 400.0,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Container(height: 300),
            Container(
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(5.0),
              color: Colors.green,
              alignment: Alignment.topLeft,
              child: SizedOverflowBox(
                alignment: Alignment.topLeft,
                size: Size(200.0, 200.0),
                child: Container(
                  width: 200.0,
                  height: 100.0,
                  color: Colors.red,
                  child: Text(
                      '12345678901234567890123456789012345678901234567890'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
