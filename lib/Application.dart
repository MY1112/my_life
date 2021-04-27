import 'package:flutter/material.dart';
import 'package:my_life/Pages/Main/index.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hi ET',
      home: new Main(),
    );
  }
}
