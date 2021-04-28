import 'package:flutter/material.dart';
import 'package:my_life/Pages/Main/index.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'one day',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Main(),
    );
  }
}
