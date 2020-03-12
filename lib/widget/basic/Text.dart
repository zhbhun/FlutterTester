import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tester/ExampleLists.dart';

final String _longSentence =
    'Build Beautiful Native Apps with Flutter, Google\'s Mobile App SDK. Expressive & Flexible UI. Fast Development. Native Performance. Features: Fast Development, Expressive And Flexible UI, Native Performance.';

class TextExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Text', widget: () => TextExample());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      home: Scaffold(
        appBar: AppBar(title: Text('Text')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //# default
              Text('text'),
              //# textAlign
              Text('left', textAlign: TextAlign.left),
              Text('center', textAlign: TextAlign.center),
              Text('right', textAlign: TextAlign.right),
              Text('start', textAlign: TextAlign.start),
              Text('end', textAlign: TextAlign.end),
              Text('justify', textAlign: TextAlign.justify),
              Text(
                _longSentence,
                textAlign: TextAlign.justify,
              ),
              //# color
              Text('fultter', style: TextStyle(color: Colors.red.shade500)),
              Text('fultter', style: TextStyle(color: Colors.blue.shade500)),
              Text('fultter', style: TextStyle(color: Colors.green.shade500)),
              //# background
              Text('red',
                  style: TextStyle(backgroundColor: Colors.red.shade500)),
              Text('blue',
                  style: TextStyle(backgroundColor: Colors.blue.shade500)),
              Text('green',
                  style: TextStyle(backgroundColor: Colors.green.shade500)),
              //# size
              Text('fontSize', style: TextStyle(fontSize: 10)),
              Text('fontSize', style: TextStyle(fontSize: 12)),
              Text('fontSize', style: TextStyle(fontSize: 14)),
              Text('fontSize', style: TextStyle(fontSize: 16)),
              Text('fontSize', style: TextStyle(fontSize: 18)),
              Text('fontSize', style: TextStyle(fontSize: 20)),
              //# height
              Container(
                color: Colors.red,
                child: Text(
                  'height',
                  style: TextStyle(backgroundColor: Colors.white),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Text(
                  'height',
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    height: 1.5,
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: Text(
                  'height',
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    height: 2,
                  ),
                ),
              ),
              //# weight
              Text('normal', style: TextStyle(fontWeight: FontWeight.normal)),
              Text('bold', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('w100', style: TextStyle(fontWeight: FontWeight.w100)),
              Text('w200', style: TextStyle(fontWeight: FontWeight.w200)),
              Text('w300', style: TextStyle(fontWeight: FontWeight.w300)),
              Text('w400', style: TextStyle(fontWeight: FontWeight.w400)),
              Text('w500', style: TextStyle(fontWeight: FontWeight.w500)),
              Text('w600', style: TextStyle(fontWeight: FontWeight.w600)),
              Text('w700', style: TextStyle(fontWeight: FontWeight.w700)),
              Text('w800', style: TextStyle(fontWeight: FontWeight.w800)),
              Text('w900', style: TextStyle(fontWeight: FontWeight.w900)),
              //# italic
              Text('normal', style: TextStyle(fontStyle: FontStyle.normal)),
              Text('italic', style: TextStyle(fontStyle: FontStyle.italic)),
              //# shadow
              Text(
                'shadow',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.blue,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
              //# underline
              Text(
                'underline',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                'lineThrough',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text(
                'overline',
                style: TextStyle(
                  decoration: TextDecoration.overline,
                ),
              ),
              Text(
                'solid',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
              Text(
                'dashed',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
              Text(
                'dotted',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ),
              Text(
                'double',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationStyle: TextDecorationStyle.double,
                ),
              ),
              Text(
                'wavy',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              //# spacing
              Text(
                'text spaceing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: -1,
                  wordSpacing: -1,
                ),
              ),
              Text(
                'text spaceing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 0,
                  wordSpacing: 0,
                ),
              ),
              Text(
                'text spaceing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 1,
                  wordSpacing: 1,
                ),
              ),
              Text(
                'text spaceing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 3,
                  wordSpacing: 3,
                ),
              ),
              //# font family
              Text(
                'font family',
                style: TextStyle(
                  fontFamily: 'DancingScript',
                ),
              ),
              //# theme
              Text(
                'title of theme',
                style: Theme.of(context).textTheme.title,
              ),
              //# rich
              RichText(
                text: TextSpan(
                  // set the default style for the children TextSpans
                  style:
                      Theme.of(context).textTheme.body1.copyWith(fontSize: 30),
                  children: [
                    TextSpan(
                      text: 'Styling ',
                    ),
                    TextSpan(
                      text: 'text',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // TODO: 不支持？
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('pressed'),
                            ),
                          );
                        },
                    ),
                    TextSpan(
                      text: ' in Flutter',
                    ),
                  ],
                ),
              ),
              //# softWrap
              Text(
                _longSentence,
                softWrap: true,
              ),
              Text(
                _longSentence,
                softWrap: false,
              ),
              //# maxLines
              Text(
                _longSentence,
                maxLines: 2,
              ),
              Text(
                _longSentence,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                _longSentence,
                maxLines: 2,
                overflow: TextOverflow.clip,
              ),
              Text(
                _longSentence,
                maxLines: 2,
                overflow: TextOverflow.fade,
              ),
              Text(
                _longSentence,
                maxLines: 2,
                overflow: TextOverflow.visible,
              ),
              Text(
                _longSentence,
                maxLines: 4,
              ),
              //# strutStyle
              Text(
                'Hello, world!\nSecond line!',
                style: TextStyle(
                  backgroundColor: Colors.red,
                  fontSize: 10,
                  fontFamily: 'Raleway',
                ),
                strutStyle: StrutStyle(
                  fontFamily: 'Roboto',
                  fontSize: 30,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
