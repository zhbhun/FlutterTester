import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tester/ExampleLists.dart';

class CupertinoPickerExample extends StatelessWidget {
  static final example = ExampleItem(
      title: 'CupertinoPicker', widget: () => CupertinoPickerExample());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CupertinoPicker1',
      home: Scaffold(
        appBar: AppBar(title: Text('CupertinoPicker')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //# default
              Text('default'),
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 3,
                child: CupertinoPicker(
                  itemExtent: 32,
                  onSelectedItemChanged: (position) {
                    print('The position is $position');
                  },
                  useMagnifier: true,
                  offAxisFraction: 0,
                  magnification: 1.08,
                  squeeze: 1.25,
                  backgroundColor: CupertinoColors.white,
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
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 3,
                child: CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (DateTime newdate) {
                    print(newdate);
                  },
                ),
              ),
              //# mode
              Text('mode: date'),
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 3,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (DateTime newdate) {
                    print(newdate);
                  },
                ),
              ),
              Text('mode: time'),
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 3,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.time,
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (DateTime newdate) {
                    print(newdate);
                  },
                ),
              ),
              Text('mode: dateAndTime'),
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 3,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.dateAndTime,
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (DateTime newdate) {
                    print(newdate);
                  },
                ),
              ),
              Text('maximumDate'),
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 3,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime.now(),
                  maximumDate: DateTime(
                    2019,
                    10,
                    1,
                  ),
                  onDateTimeChanged: (DateTime newdate) {
                    print(newdate);
                  },
                ),
              ),
              //# showCupertinoModalPopup
              FlatButton(
                child: Text('showCupertinoModalPopup1'),
                onPressed: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return Container(
                        height:
                            MediaQuery.of(context).copyWith().size.height / 3,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.dateAndTime,
                          initialDateTime: DateTime.now(),
                          onDateTimeChanged: (DateTime newdate) {
                            print(newdate);
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
