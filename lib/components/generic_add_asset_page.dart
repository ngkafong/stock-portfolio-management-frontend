import 'package:flutter/material.dart';

class GenericAddAssetPage extends StatelessWidget {
  // This widget is the root of your application.

  final String title;

  final List<Map> fields;
  final _addAsset;

  const GenericAddAssetPage(
    this.title,
    this.fields,
    this._addAsset
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: fields.map((field) =>
          Row()
        ).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addAsset,
        tooltip: 'Save',
        child: Icon(Icons.save),
      ),
    );
  }
}
