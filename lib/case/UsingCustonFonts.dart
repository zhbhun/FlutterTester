import 'package:flutter/material.dart';
import '../ExampleLists.dart';

final example = ExampleItem(
    title: 'Using Custom Fonts',
    widget: () => MaterialApp(
        // Title
        title: "Using Custom Fonts",
        // Home
        home: Scaffold(
          // Appbar
          appBar: AppBar(
            // Title
            title: Text("Using Custom Fonts"),
          ),
          // Body
          body: Container(
            // Center the content
            child: Center(
              // Add Text
              child: Text("The quick brown fox jumps over the lazy dog",
                  // Center align text
                  textAlign: TextAlign.center,
                  // set a text style which defines a custom font
                  style: getCustomFontTextStyle()),
            ),
          ),
        )));

TextStyle getCustomFontTextStyle() {
  // text style which defines a custom font
  return const TextStyle(
      // set color of text
      color: Colors.blueAccent,
      // set the font family as defined in pubspec.yaml
      fontFamily: 'Pacifico',
      // set the font weight
      fontWeight: FontWeight.w400,
      // set the font size
      fontSize: 36.0);
}
