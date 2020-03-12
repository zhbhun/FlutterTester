import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_tester/ExampleLists.dart';

class ImageExample extends StatelessWidget {
  static final example =
      ExampleItem(title: 'Image', widget: () => ImageExample());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image',
      home: Scaffold(
        appBar: AppBar(title: Text('Image')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //# source
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Wrap(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 100,
                      child: Image.network('https://picsum.photos/250?image=9'),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      child: Image.asset('assets/images/lake.jpg'),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //# size
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Wrap(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 40,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      height: 40,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        'assets/images/lake.jpg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
              //# fit
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Wrap(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      height: 100,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      height: 50,
                      fit: BoxFit.fitWidth,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      height: 50,
                      fit: BoxFit.fitHeight,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.none,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.scaleDown,
                    ),
                  ],
                ),
              ),
              //# alignment
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Wrap(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/twitter.png',
                        width: 100,
                        height: 100,
                        alignment: Alignment.topLeft,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/twitter.png',
                        width: 100,
                        height: 100,
                        alignment: Alignment.topCenter,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/twitter.png',
                        width: 100,
                        height: 100,
                        alignment: Alignment.topRight,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/images/twitter.png',
                        width: 32,
                        height: 32,
                        alignment: Alignment.topLeft,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/images/twitter.png',
                        width: 32,
                        height: 32,
                        alignment: Alignment.topCenter,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/images/twitter.png',
                        width: 32,
                        height: 32,
                        alignment: Alignment.topRight,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/twitter.png',
                        width: 150,
                        height: 150,
                        alignment: Alignment.topLeft,
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'assets/images/twitter.png',
                        width: 32,
                        height: 32,
                        alignment: Alignment.topLeft,
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //# color
              Container(
                child: Wrap(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/ic_launcher.png',
                      width: 100,
                      color: Colors.red,
                    ),
                    Image.asset(
                      'assets/images/ic_launcher.png',
                      width: 100,
                      color: Colors.blue,
                    ),
                    Image.asset(
                      'assets/images/ic_launcher.png',
                      width: 100,
                      color: Colors.green,
                    ),
                  ],
                ),
                margin: EdgeInsets.only(bottom: 15),
              ),
              //# colorBlendMode
              Container(
                child: Wrap(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      color: Colors.red,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      color: Colors.red,
                      colorBlendMode: BlendMode.lighten,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      color: Colors.red,
                      colorBlendMode: BlendMode.overlay,
                    ),
                    Image.asset(
                      'assets/images/lake.jpg',
                      width: 100,
                      color: Colors.red,
                      colorBlendMode: BlendMode.plus,
                    ),
                  ],
                ),
                margin: EdgeInsets.only(bottom: 15),
              ),
              //# repeat
              Container(
                child: Wrap(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/twitter.png',
                      height: 100,
                      width: 100,
                    ),
                    Image.asset(
                      'assets/images/twitter.png',
                      height: 100,
                      width: 100,
                      repeat: ImageRepeat.noRepeat,
                    ),
                    Image.asset(
                      'assets/images/twitter.png',
                      height: 100,
                      width: 100,
                      repeat: ImageRepeat.repeat,
                    ),
                    Image.asset(
                      'assets/images/twitter.png',
                      height: 100,
                      width: 100,
                      repeat: ImageRepeat.repeatX,
                    ),
                    Image.asset(
                      'assets/images/twitter.png',
                      height: 100,
                      width: 100,
                      repeat: ImageRepeat.repeatY,
                    ),
                  ],
                ),
                margin: EdgeInsets.only(bottom: 15),
              ),
              //# fade
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Wrap(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: <Widget>[
                          Center(child: CircularProgressIndicator()),
                          Center(
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: 'https://picsum.photos/250?image=9',
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/images/loading.gif',
                        image: 'https://picsum.photos/250?image=9',
                      ),
                    ),
                    // Container(
                    //   height: 100,
                    //   width: 100,
                    //   child: CachedNetworkImage(
                    //     placeholder: (context, url) =>
                    //         CircularProgressIndicator(),
                    //     imageUrl: 'https://picsum.photos/250?image=9',
                    //   ),
                    //   decoration: BoxDecoration(
                    //     color: Colors.grey.shade400,
                    //     border: Border.all(
                    //       color: Colors.green,
                    //       width: 2,
                    //       style: BorderStyle.solid,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
