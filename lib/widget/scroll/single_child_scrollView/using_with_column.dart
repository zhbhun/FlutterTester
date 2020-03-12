/**
 * @see https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html#sample-code-using-singlechildscrollview-with-a-column
 */
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class UsingWithColumn extends StatelessWidget {
  static final example = ExampleItem(
    title: 'Using with Column',
    widget: () => UsingWithColumn(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using with Column'),
      ),
      body: ExampleList(
        examples: [
          TestSpaceAround.example,
          TestSpaceAroundWithLayoutBuilder.example,
          TestExpanded.example,
          TestExpandedWithMaxHeight.example,
          TestOverflowWithMaxHeight.example,
          TestExpandedWithIntrinsicHeight.example,
          TestOverflowWithIntrinsicHeight.example,
        ],
      ),
    );
  }
}

/// 测试 SingleScrollView 中的 Column 使用 spaceAround
/// Column 没有最小高度无法在 SingleScrollView 内部使用 spaceAround
class TestSpaceAround extends StatelessWidget {
  static final example = ExampleItem(
    title: 'SpaceAround',
    widget: () => TestSpaceAround(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SpaceAround'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  color: const Color(0xff808000), // Yellow
                  width: viewportConstraints.maxWidth,
                  height: 120.0,
                  child: Text(
                      '${viewportConstraints.minWidth.toString()} - ${viewportConstraints.minHeight.toString()}'),
                ),
                Container(
                  color: const Color(0xff008000), // Green
                  width: viewportConstraints.maxWidth,
                  height: 120.0,
                  child: Text(
                      '${viewportConstraints.maxWidth.toString()} - ${viewportConstraints.maxHeight.toString()}'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// 通过 LayoutBuilder 来获取滚动容器的高度，并设置 Column 的最小高度，从而实现 spaceAround
class TestSpaceAroundWithLayoutBuilder extends StatelessWidget {
  static final example = ExampleItem(
    title: 'SpaceAround with LayoutBuilder',
    widget: () => TestSpaceAroundWithLayoutBuilder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SpaceAround with LayoutBuilder'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        color: const Color(0xff808000), // Yellow
                        width: viewportConstraints.maxWidth,
                        height: 120.0,
                        child: Text(
                            '${viewportConstraints.minWidth.toString()} - ${viewportConstraints.minHeight.toString()}'),
                      ),
                      Container(
                        color: const Color(0xff008000), // Green
                        width: viewportConstraints.maxWidth,
                        height: 120.0,
                        child: Text(
                            '${viewportConstraints.maxWidth.toString()} - ${viewportConstraints.maxHeight.toString()}'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  color: Colors.red,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// 测试 Column 中带有 Expanded
/// 没有最大高度的情况下使用 Expanded，Flutter 无法正常渲染
class TestExpanded extends StatelessWidget {
  static final example = ExampleItem(
    title: 'Expanded',
    widget: () => TestExpanded(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        color: const Color(0xff808000), // Yellow
                        width: viewportConstraints.maxWidth,
                        height: 120.0,
                        child: Text(
                            '${viewportConstraints.minWidth.toString()} - ${viewportConstraints.minHeight.toString()}'),
                      ),
                      Expanded(
                        child: Container(
                          color: const Color(0xff008000), // Green
                          width: viewportConstraints.maxWidth,
                          child: Text(
                              '${viewportConstraints.maxWidth.toString()} - ${viewportConstraints.maxHeight.toString()}'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  color: Colors.red,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// 测试设置了最大高度的 Column 中带有 Expanded
/// Expanded 正常扩张
class TestExpandedWithMaxHeight extends StatelessWidget {
  static final example = ExampleItem(
    title: 'Expanded with max height',
    widget: () => TestExpandedWithMaxHeight(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded with max height'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                    maxHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: const Color(0xff808000), // Yellow
                        width: viewportConstraints.maxWidth,
                        height: 120.0,
                        child: Text(
                            '${viewportConstraints.minWidth.toString()} - ${viewportConstraints.minHeight.toString()}'),
                      ),
                      Expanded(
                        child: Container(
                          color: const Color(0xff008000), // Green
                          width: viewportConstraints.maxWidth,
                          child: Text(
                              '${viewportConstraints.maxWidth.toString()} - ${viewportConstraints.maxHeight.toString()}'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  color: Colors.red,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// 测试 Column 设置了最大高度情况下，子节点高度溢出了
class TestOverflowWithMaxHeight extends StatelessWidget {
  static final example = ExampleItem(
    title: 'Overflow with max height',
    widget: () => TestOverflowWithMaxHeight(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overflow with max height'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                    maxHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: const Color(0xff808000), // Yellow
                        width: viewportConstraints.maxWidth,
                        height: 1000.0,
                        child: Text(
                            '${viewportConstraints.minWidth.toString()} - ${viewportConstraints.minHeight.toString()}'),
                      ),
                      Expanded(
                        child: Container(
                          color: const Color(0xff008000), // Green
                          width: viewportConstraints.maxWidth,
                          child: Text(
                              '${viewportConstraints.maxWidth.toString()} - ${viewportConstraints.maxHeight.toString()}'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  color: Colors.red,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// 使用 IntrinsicHeight 来解决 Expanded 问题
/// IntrinsicHeight 会自动上下文计算合适的容器高度
class TestExpandedWithIntrinsicHeight extends StatelessWidget {
  static final example = ExampleItem(
    title: 'Expanded with IntrinsicHeight',
    widget: () => TestExpandedWithIntrinsicHeight(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded with IntrinsicHeight'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Container(
                      color: const Color(0xff808000), // Yellow
                      width: viewportConstraints.maxWidth,
                      height: 120.0,
                      child: Text(
                          '${viewportConstraints.minWidth.toString()} - ${viewportConstraints.minHeight.toString()}'),
                    ),
                    Expanded(
                      child: Container(
                        color: const Color(0xff008000), // Green
                        width: viewportConstraints.maxWidth,
                        child: Text(
                            '${viewportConstraints.maxWidth.toString()} - ${viewportConstraints.maxHeight.toString()}'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


/// 使用 IntrinsicHeight 来解决 Expanded 问题
/// IntrinsicHeight 会自动上下文计算合适的容器高度
class TestOverflowWithIntrinsicHeight extends StatelessWidget {
  static final example = ExampleItem(
    title: 'Overflow with IntrinsicHeight',
    widget: () => TestOverflowWithIntrinsicHeight(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overflow with IntrinsicHeight'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Container(
                      color: const Color(0xff808000), // Yellow
                      width: viewportConstraints.maxWidth,
                      height: 1000.0,
                      child: Text(
                          '${viewportConstraints.minWidth.toString()} - ${viewportConstraints.minHeight.toString()}'),
                    ),
                    Expanded(
                      child: Container(
                        color: const Color(0xff008000), // Green
                        width: viewportConstraints.maxWidth,
                        child: Text(
                            '${viewportConstraints.maxWidth.toString()} - ${viewportConstraints.maxHeight.toString()}'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

