import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_tester/ExampleLists.dart';
import 'CustomDatePicker.dart';
import 'DateRangePicker.dart';

class _TestDateRangePicker extends StatefulWidget {
  @override
  _TestDateRnagePickerState createState() {
    return _TestDateRnagePickerState();
  }
}

class _TestDateRnagePickerState extends State<_TestDateRangePicker> {
  List<DateTime> value = [DateTime.now(), DateTime.now()];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        DateRangePicker(
          value: this.value,
          onChange: (value) {
            setState(() {
              this.value = value;
            });
          },
          maximumValue: DateTime.now(),
        ),
      ],
    );
  }
}

class CustomDatePickerExample extends StatelessWidget {
  static final example = ExampleItem(
      title: 'CustomDatePicker', widget: () => CustomDatePickerExample());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale.fromSubtags(
          languageCode: 'zh',
        ),
      ],
      title: 'CustomDatePicker',
      home: Scaffold(
        appBar: AppBar(title: Text('CustomDatePicker')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //# default
              // Text('default'),
              // Container(
              //   height: MediaQuery.of(context).copyWith().size.height / 3,
              //   child: CupertinoDatePicker(
              //     initialDateTime: DateTime.now(),
              //     onDateTimeChanged: (DateTime newdate) {
              //       print(newdate);
              //     },
              //   ),
              // ),
              // //# mode
              // Text('mode: date'),
              // Container(
              //   height: MediaQuery.of(context).copyWith().size.height / 3,
              //   child: CupertinoDatePicker(
              //     mode: CupertinoDatePickerMode.date,
              //     initialDateTime: DateTime.now(),
              //     onDateTimeChanged: (DateTime newdate) {
              //       print(newdate);
              //     },
              //   ),
              // ),
              // Text('mode: time'),
              // Container(
              //   height: MediaQuery.of(context).copyWith().size.height / 3,
              //   child: CupertinoDatePicker(
              //     mode: CupertinoDatePickerMode.time,
              //     initialDateTime: DateTime.now(),
              //     onDateTimeChanged: (DateTime newdate) {
              //       print(newdate);
              //     },
              //   ),
              // ),
              // Text('mode: dateAndTime'),
              // Container(
              //   height: MediaQuery.of(context).copyWith().size.height / 3,
              //   child: CupertinoDatePicker(
              //     mode: CupertinoDatePickerMode.dateAndTime,
              //     initialDateTime: DateTime.now(),
              //     onDateTimeChanged: (DateTime newdate) {
              //       print(newdate);
              //     },
              //   ),
              // ),
              // //# minimumYear
              // Text('minimumYear'),
              // Container(
              //   height: MediaQuery.of(context).copyWith().size.height / 3,
              //   child: CupertinoDatePicker(
              //     mode: CupertinoDatePickerMode.date,
              //     initialDateTime: DateTime.now(),
              //     minimumYear: 2010,
              //     onDateTimeChanged: (DateTime newdate) {
              //       print(newdate);
              //     },
              //   ),
              // ),
              // Text('maximumYear'),
              // Container(
              //   height: MediaQuery.of(context).copyWith().size.height / 3,
              //   child: CupertinoDatePicker(
              //     mode: CupertinoDatePickerMode.date,
              //     initialDateTime: DateTime.now(),
              //     maximumYear: 2020,
              //     onDateTimeChanged: (DateTime newdate) {
              //       print(newdate);
              //     },
              //   ),
              // ),
              Text('maximumDate'),
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 3,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime(
                    2019,
                    1,
                    1,
                  ),
                  minimumDate: DateTime(
                    2016,
                    10,
                    16,
                  ),
                  maximumDate: DateTime(
                    2019,
                    10,
                    16,
                  ),
                  onDateTimeChanged: (DateTime newdate) {
                    print(newdate);
                  },
                ),
              ),
              // # showCupertinoModalPopup
              FlatButton(
                child: Text('showCupertinoModalPopup'),
                onPressed: () {
                  CupertinoDatePicker.showDateModal(
                      context: context,
                      title: '选择起始时间',
                      onCancel: (time) {
                        print('>> cancel $time');
                      },
                      onConfirm: (time) {
                        print('>> confirm $time');
                      });
                },
              ),
              _TestDateRangePicker(),
            ],
          ),
        ),
      ),
    );
  }
}
