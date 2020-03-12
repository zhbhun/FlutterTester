import 'package:flutter/material.dart';
import '../ExampleLists.dart';

final example = ExampleItem(title: 'Grid Layout', widget: () => MyApp());

class MyApp extends StatelessWidget {
  final MyGridView myGridView = MyGridView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("GridView Example"),
        ),
        body: myGridView.build(),
      ),
    );
  }
}

class MyGridView {
  GestureDetector getStructuredGridCell(name, image) {
    // Wrap the child under GestureDetector to setup a on click action
    return GestureDetector(
      onTap: () {
        print("onTap called.");
      },
      child: Card(
          elevation: 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Image(image: AssetImage('assets/images/' + image)),
              Center(
                child: Text(name),
              )
            ],
          )),
    );
  }

  GridView build() {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 3,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("Facebook", "facebook.png"),
        getStructuredGridCell("Twitter", "twitter.png"),
        getStructuredGridCell("Instagram", "instagram.png"),
        getStructuredGridCell("Linkedin", "linkedin.png"),
        getStructuredGridCell("Google Plus", "google_plus.png"),
        getStructuredGridCell("Launcher Icon", "ic_launcher.png"),
      ],
    );
  }
}
