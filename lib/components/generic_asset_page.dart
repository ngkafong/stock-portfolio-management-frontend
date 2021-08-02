import 'package:flutter/material.dart';
import '../components/asset_detailed/asset_detailed.dart';
import '../components/asset_list/asset_list.dart';

class GenericAssetPage extends StatelessWidget {
  // This widget is the root of your application.

  final String title;

  const GenericAssetPage(this.title);

  void _addAsset() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          AssetDetailed([]),
          AssetList([]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addAsset,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
