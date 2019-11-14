import 'package:flutter/material.dart';
import '../ExampleLists.dart';

final example = ExampleItem(
    title: 'Simple Material App',
    widget: () => MaterialApp(
        // Title
        title: "Simple Material App",
        // Home
        home: Scaffold(
          // Appbar
          appBar: AppBar(
            // Title
            title: Text("Simple Material App"),
          ),
          // Body
          body: Container(
            // Center the content
            child: Center(
              // Add Text
              child: Text("Hello World!"),
            ),
          ),
        )));
