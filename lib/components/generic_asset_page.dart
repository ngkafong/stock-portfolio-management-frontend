import 'package:flutter/material.dart';

class GenericAssetPage extends StatelessWidget {
  // This widget is the root of your application.

  void _addAsset() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO'),
      ),
      body: ListView(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addAsset,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
