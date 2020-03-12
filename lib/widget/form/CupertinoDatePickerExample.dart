import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_tester/ExampleLists.dart';

class CupertinoDatePickerExample extends StatelessWidget {
  static final example = ExampleItem(
      title: 'CupertinoDatePicker', widget: () => CupertinoDatePickerExample());

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
      title: 'CupertinoDatePicker',
      home: Scaffold(
        appBar: AppBar(title: Text('CupertinoDatePicker')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //# default
              Text('default'),
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
                  minimumDate: DateTime(
                    2018,
                    10,
                    1,
                  ),
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
                child: Text('showCupertinoModalPopup2'),
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
