import 'dart:math';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  @override
  createState() => new _MainState();
}

class _MainState extends State<Main> {

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    '木叶十二忍',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  '第七班, 第三班, 第十班, 第八班',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('12'),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
          木叶12小强是指“第七班”“第三班”“第八班”“第十班”共十二名年轻忍者，成员分别是：漩涡鸣人、宇智波佐助、春野樱、日向宁次、李洛克、天天、日向雏田、犬冢牙、油女志乃、奈良鹿丸、秋道丁次、山中井野。
        ''',
        softWrap: true,
      ),
    );

    return new SafeArea(
      top: false,
      child: Scaffold(
        body: new Column(
          children: [
            Image.asset(
              'assets/images/lake.jpg',
              width: MediaQuery.of(context).size.width,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection,
          ],
        ),
      ),
    );
  }
}