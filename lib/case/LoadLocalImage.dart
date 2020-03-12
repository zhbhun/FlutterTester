import 'package:flutter/material.dart';
import '../ExampleLists.dart';

final example = ExampleItem(
    title: 'Loda Local Image',
    widget: () => MaterialApp(
          home: MyApp(),
        ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Load local image"),
        ),
        body: Container(
          child: Center(
            child: Text(
              "Hello World!",
              style: TextStyle(color: Colors.white),
            ),
          ),
          // Set the image as the background of the Container
          decoration: BoxDecoration(
              image: DecorationImage(
                  // Load image from assets
                  image: AssetImage('assets/bg1.jpg'),
                  // Make the image cover the whole area
                  fit: BoxFit.cover)),
        ));
  }
}
