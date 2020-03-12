import 'package:flutter/material.dart';
import '../ExampleLists.dart';

final example = ExampleItem(
    title: 'Using Gradients',
    widget: () => MaterialApp(
        // Title
        title: "Using Gradient",
        // Home
        home: Scaffold(
            // Appbar
            appBar: AppBar(
              // Title
              title: Text("Using Gradient"),
            ),
            // Body
            body: Container(
                // Center the content
                child: Center(
                  // Add Text
                  child: Text(
                    "Hello World!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Set background
                decoration: BoxDecoration(
                    // Add Gradient
                    gradient: getCustomGradient())))));

LinearGradient getCustomGradient() {
  // Define a Linear Gradient
  return LinearGradient(
      colors: [Colors.pink, Colors.blueAccent],
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(0.6, 0.0),
      stops: [0.0, 0.6],
      tileMode: TileMode.clamp);
}
