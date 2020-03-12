import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

class ContainerExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Container', widget: () => ContainerExample());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Continaer',
        home: Scaffold(
            appBar: AppBar(title: Text('Container')),
            body: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //# 大小
                Wrap(
                  children: <Widget>[
                    //- 默认
                    Container(
                      color: Colors.red.shade50,
                    ),
                    //- 带子组件
                    Container(
                      child: Text('child'),
                      color: Colors.red.shade100,
                    ),
                    //- 限定大小
                    Container(
                      color: Colors.red.shade200,
                      height: 100,
                      width: 100,
                    ),
                    //- 最小宽高
                    Container(
                      child: Text('flutter'),
                      color: Colors.red.shade300,
                      constraints: BoxConstraints(
                        minHeight: 100,
                        minWidth: 100,
                      ),
                    ),
                    //-最大宽度
                    Container(
                      child: Text(
                          'Build Beautiful Native Apps with Flutter, Google\'s Mobile App SDK. Expressive & Flexible UI. Fast Development. Native Performance. Features: Fast Development, Expressive And Flexible UI, Native Performance.'),
                      color: Colors.red.shade400,
                      constraints: BoxConstraints(
                        maxWidth: 300,
                      ),
                    ),
                  ],
                ),
                //# 背景色
                Wrap(
                  children: <Widget>[
                    //- 默认
                    Container(
                      height: 30,
                      width: 100,
                    ),
                    Container(
                      color: Colors.green.shade100,
                      height: 30,
                      width: 100,
                    ),
                    Container(
                      color: Colors.green.shade500,
                      height: 30,
                      width: 100,
                    ),
                  ],
                ),
                //# child
                Container(color: Colors.blue.shade500, child: Text('child')),
                //# alignment
                Wrap(
                  children: <Widget>[
                    //- default
                    Container(
                      child: Text('defaullt'),
                      color: Colors.red.shade50,
                      height: 100,
                      width: 100,
                    ),
                    //- topLeft
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('topLeft'),
                      color: Colors.red.shade100,
                      height: 100,
                      width: 100,
                    ),
                    //- topCenter
                    Container(
                      alignment: Alignment.topCenter,
                      child: Text('topCenter'),
                      color: Colors.red.shade200,
                      height: 100,
                      width: 100,
                    ),
                    //- topRight
                    Container(
                      alignment: Alignment.topRight,
                      child: Text('topRight'),
                      color: Colors.red.shade300,
                      height: 100,
                      width: 100,
                    ),
                    //- centerLeft
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text('centerLeft'),
                      color: Colors.red.shade400,
                      height: 100,
                      width: 100,
                    ),
                    //- center
                    Container(
                      alignment: Alignment.center,
                      child: Text('center'),
                      color: Colors.red.shade500,
                      height: 100,
                      width: 100,
                    ),
                    //- centerRight
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text('centerRight'),
                      color: Colors.red.shade600,
                      height: 100,
                      width: 100,
                    ),
                    //- bottomLeft
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text('bottomLeft'),
                      color: Colors.red.shade700,
                      height: 100,
                      width: 100,
                    ),
                    //- bottomCenter
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Text('bottomCenter'),
                      color: Colors.red.shade800,
                      height: 100,
                      width: 100,
                    ),
                    //- bottomRight
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text('bottomRight'),
                      color: Colors.red.shade900,
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
                //# margin
                Container(
                  child: Wrap(
                    children: <Widget>[
                      //- default
                      Container(
                        child: Text('default'),
                        color: Colors.green.shade50,
                      ),
                      //- all 10
                      Container(
                        child: Text('all: 10'),
                        color: Colors.green.shade100,
                        margin: EdgeInsets.all(10),
                      ),
                      //- all 30
                      Container(
                        child: Text('all: 20'),
                        color: Colors.green.shade200,
                        margin: EdgeInsets.all(20),
                      ),
                      //- fromLTRB 30
                      Container(
                        child: Text('fromLTRB'),
                        color: Colors.green.shade300,
                        margin: EdgeInsets.fromLTRB(10, 30, 10, 30),
                      ),
                      //- symmetric: vertical=30,horizontal=10
                      Container(
                        child: Text('symmetric'),
                        color: Colors.green.shade400,
                        margin:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                      ),
                      //- only: left=10,top=30
                      Container(
                        child: Text('only'),
                        color: Colors.green.shade500,
                        margin: EdgeInsets.only(left: 10, top: 30),
                      ),
                    ],
                  ),
                  color: Colors.grey.shade500,
                ),
                //# padding
                Wrap(
                  children: <Widget>[
                    //- default
                    Container(
                      child: Text('default'),
                      color: Colors.blue.shade50,
                    ),
                    //- all 10
                    Container(
                      child: Text('all: 10'),
                      color: Colors.blue.shade100,
                      padding: EdgeInsets.all(10),
                    ),
                    //- all 30
                    Container(
                      child: Text('all: 20'),
                      color: Colors.blue.shade200,
                      padding: EdgeInsets.all(20),
                    ),
                    //- fromLTRB 30
                    Container(
                      child: Text('fromLTRB'),
                      color: Colors.blue.shade300,
                      padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                    ),
                    //- symmetric: vertical=30,horizontal=10
                    Container(
                      child: Text('symmetric'),
                      color: Colors.blue.shade400,
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                    ),
                    //- only: left=10,top=30
                    Container(
                      child: Text('only'),
                      color: Colors.blue.shade500,
                      padding: EdgeInsets.only(left: 10, top: 30),
                    ),
                  ],
                ),
                //# decoration
                Wrap(
                  children: <Widget>[
                    Container(
                      child: Text('color'),
                      decoration: BoxDecoration(color: Colors.red.shade50),
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      child: Text('gradient'),
                      decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        gradient: new LinearGradient(
                          colors: [Colors.red, Colors.cyan],
                        ),
                      ),
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      child: Text('image'),
                      decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        image: DecorationImage(
                          image: AssetImage('assets/bg1.jpg'),
                        ),
                      ),
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      child: Text('border'),
                      decoration: BoxDecoration(
                        color: Colors.red.shade300,
                        border: new Border.all(
                            color: Colors.green,
                            width: 5.0,
                            style: BorderStyle.solid),
                      ),
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      child: Text('borderRadius'),
                      decoration: BoxDecoration(
                        color: Colors.red.shade300,
                        border: new Border.all(
                          color: Colors.green,
                          width: 5.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: new BorderRadius.all(
                          new Radius.circular(20.0),
                        ),
                      ),
                      height: 100,
                      width: 100,
                    ),
                  ],
                )
              ],
            ))));
  }
}
