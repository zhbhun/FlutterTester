import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tester/ExampleLists.dart';

class Demo1 extends StatelessWidget {
  static final example = ExampleItem(title: 'Demo1', widget: () => Demo1());

  @override
  Widget build(BuildContext context) {
//    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
//    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
//    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//      systemNavigationBarColor: const Color(0x00000000),
//      systemNavigationBarDividerColor: null,
//      statusBarColor: const Color(0x00000000),
//      systemNavigationBarIconBrightness: Brightness.dark,
//      statusBarIconBrightness: Brightness.dark,
//      statusBarBrightness: Brightness.dark,
//    ));
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 15, bottom: 0),
                child: Text(
                  '$index',
                  textAlign: TextAlign.left,
                ),
              );
            },
            itemCount: 100,
          ),
        ),
      ),
    );
  }
}
