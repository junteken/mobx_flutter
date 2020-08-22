import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_englishword/src/data/saved_data.dart';

class SavedList extends StatefulWidget {
  @override
  _SavedListState createState() => _SavedListState();
}

class _SavedListState extends State<SavedList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("saved list"),
      ),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return Observer(
      builder: (_) => ListView.builder(
          itemCount: saved_data_object.saved_data.length*2,
          itemBuilder: (context, index) {
            if (index.isOdd) return Divider();

            var realIndex = index ~/ 2;

            return _buildRow(saved_data_object.saved_data.toList()[realIndex]);
          }),
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        textScaleFactor: 1.5,
      ),
      onTap: (){
        saved_data_object.addToOrRemoveFromSavedList(pair);
      },
    );
  }
}
