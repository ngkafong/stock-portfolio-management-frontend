import 'package:flutter/material.dart';
import '../components/asset_detailed/asset_detailed.dart';
import '../components/asset_list/asset_list.dart';

class GenericAssetPage extends StatelessWidget {
  // This widget is the root of your application.

  final String title;

  final calculationResults;
  final subAssets;
  final transactions;
  final _addAsset;

  const GenericAssetPage(
    this.title,
    this.calculationResults,
    this.subAssets,
    this.transactions,
    this._addAsset
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          AssetDetailed([]),
          AssetList(subAssets),
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
