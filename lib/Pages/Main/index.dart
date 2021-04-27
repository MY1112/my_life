import 'dart:math';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  @override
  createState() => new _MainState();
}

class _MainState extends State<Main> {
  final _suggestions = <String>["赵", "钱", "李", "a", "b", "c", "d"];

  final _saved = new Set<String>();

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('hei boy'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: 7,
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        return _buildRow(_suggestions[i]);
      }
    );
  }

  Widget _buildRow(String listHi) {
    final alreadySaved = _saved.contains(listHi);
    return new ListTile(
      title: new Text(
        listHi,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(listHi);
          } else {
            _saved.add(listHi);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          final tiles = _saved.map(
            (listHi) {
              return new ListTile(
                title: new Text(
                  listHi,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = ListTile
            .divideTiles(
              context: context,
              tiles: tiles,
            )
            .toList();

            return new Scaffold(
              appBar: new AppBar(
                title: new Text('Saved Suggestions'),
              ),
              body: new ListView(children: divided),
            );
        },
      ),
    );
  }
}