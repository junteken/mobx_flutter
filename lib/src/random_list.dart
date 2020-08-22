import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_englishword/src/saved.dart';

import 'data/saved_data.dart';

class RandomList extends StatefulWidget {
  @override
  _RandomListState createState() => _RandomListState();
}

class _RandomListState extends State<RandomList> {
  final List<WordPair> _suggestions = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'mobx example',
          textScaleFactor: 1.5,
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SavedList()));
            },
          )
        ],
      ),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView.builder(itemBuilder: (context, index) {
      if (index.isOdd) {
        return Divider();
      }

      var realIndex = index ~/ 2;

      if (realIndex >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return Observer(
        builder: (_) =>_buildRow(_suggestions[realIndex]),
      );
    });
  }

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = saved_data_object.saved_data.contains(pair);

    return ListTile(
      title: Text(
        pair.asPascalCase,
        textScaleFactor: 1.5,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: Colors.pink,
      ),
      onTap: () => saved_data_object.addToOrRemoveFromSavedList(pair),
    );
  }
}
