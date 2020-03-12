import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class LifeCycle extends StatefulWidget {
  static final example =
      ExampleItem(title: 'Lifecycle', widget: () => LifeCycle());

  @override
  _LifeCycleState createState() {
    return _LifeCycleState();
  }
}

class _LifeCycleState extends State<LifeCycle> {
  bool display = false;
  int count = 0;

  toggleDisplay() {
    setState(() {
      display = !display;
    });
  }

  increase() {
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lifecycle',
        home: Scaffold(
            appBar: AppBar(
                // Title
                title: Text('Lifecycle')),
            body: Column(
              children: <Widget>[
                Text(count.toString()),
                RaisedButton(child: Text('切换'), onPressed: this.toggleDisplay),
                RaisedButton(child: Text('增加'), onPressed: this.increase),
                display ? _Temp(count) : Text(display.toString()),
                Text('---'),
                _InheritedWidgetTestRoute(),
              ],
            )));
  }
}

class _Temp extends StatefulWidget {
  final int count;
  _Temp(this.count);

  @override
  _TempState createState() {
    return _TempState();
  }
}

class _TempState extends State<_Temp> {
  int count = 0;

  _TempState() {
    print('>> constuctor');
  }

  @override
  void initState() {
    super.initState();
    print('>> initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('>> didChangeDependencies');
  }

  @override
  void didUpdateWidget(_Temp oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('>> didUpdateWidget ${oldWidget.count} -> ${widget.count}');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('>> deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('>> dispose $mounted');
  }

  increese() {
    setState(() {
      print('>> setState');
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('>> build');
    return Column(
      children: <Widget>[
        Text('lifecycle: ${widget.count}'),
        RaisedButton(child: Text(count.toString()), onPressed: this.increese)
      ],
    );
  }
}

class _ShareDataWidget extends InheritedWidget {
  _ShareDataWidget({@required this.data, Widget child}) : super(child: child);

  final int data; //需要在子树中共享的数据，保存点击次数

  //定义一个便捷方法，方便子树中的widget获取共享数据
  static _ShareDataWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(_ShareDataWidget);
  }

  //该回调决定当data发生变化时，是否通知子树中依赖data的Widget
  @override
  bool updateShouldNotify(_ShareDataWidget old) {
    //如果返回true，则子树中依赖(build函数中有调用)本widget
    //的子widget的`state.didChangeDependencies`会被调用
    return old.data != data;
  }
}

class _TestWidget extends StatefulWidget {
  @override
  __TestWidgetState createState() => new __TestWidgetState();
}

class __TestWidgetState extends State<_TestWidget> {
  @override
  Widget build(BuildContext context) {
    //使用InheritedWidget中的共享数据
    return Text(_ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    //如果build中没有依赖InheritedWidget，则此回调不会被调用。
    print("Dependencies change");
  }
}

class _TestWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(_ShareDataWidget.of(context).data.toString());
  }
}

class _TestWidget1Wrapper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestWidget1WrapperState();
  }
}


class _TestWidget1WrapperState extends State<_TestWidget1Wrapper> {
  @override
  Widget build(BuildContext context) {
    //使用InheritedWidget中的共享数据
    return _TestWidget1();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    //如果build中没有依赖InheritedWidget，则此回调不会被调用。
    print("1Dependencies change");
  }
}

class _InheritedWidgetTestRoute extends StatefulWidget {
  @override
  _InheritedWidgetTestRouteState createState() => new _InheritedWidgetTestRouteState();
}

class _InheritedWidgetTestRouteState extends State<_InheritedWidgetTestRoute> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: _ShareDataWidget( //使用ShareDataWidget
        data: count,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: _TestWidget(),//子widget中依赖ShareDataWidget
            ),
            _TestWidget1(),
            _TestWidget1Wrapper(),
            RaisedButton(
              child: Text("Increment"),
              //每点击一次，将count自增，然后重新build,ShareDataWidget的data将被更新  
              onPressed: () => setState(() => ++count),
            )
          ],
        ),
      ),
    );
  }
}
