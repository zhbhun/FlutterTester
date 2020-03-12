import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class ScrollNotificationTester extends StatefulWidget {
  static final example = ExampleItem(
    title: 'ScrollNotification',
    widget: () => ScrollNotificationTester(),
  );

  @override
  _ScrollNotificationTesterState createState() {
    return _ScrollNotificationTesterState();
  }
}

class _ScrollNotificationTesterState extends State<ScrollNotificationTester> {
  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollNotification'),
      ),
      body: Scrollbar(
        //进度条
        // 监听滚动通知
        child: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
            double progress = notification.metrics.pixels /
                notification.metrics.maxScrollExtent;
            //重新构建
            setState(() {
              _progress = "${(progress * 100).toInt()}%";
            });
            print("BottomEdge: ${notification.metrics.extentAfter == 0}");
            // return true; //放开此行注释后，进度条将失效
            return false;
          },
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ListView.builder(
                  itemCount: 1000,
                  itemExtent: 50.0,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text("$index"));
                  }),
              CircleAvatar(
                //显示进度百分比
                radius: 30.0,
                child: Text(_progress),
                backgroundColor: Colors.black54,
              )
            ],
          ),
        ),
      ),
    );
  }
}
