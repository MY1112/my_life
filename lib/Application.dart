import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hi ET',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('HOME'),
        ),
        body: new Center(
          child: new Text('loading...'),
        ),
      ),
    );
  }
}
