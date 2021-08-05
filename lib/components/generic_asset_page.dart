import 'package:flutter/material.dart';
import '../components/asset_detailed/asset_detailed.dart';
import '../components/asset_list/asset_list.dart';

class GenericAssetPage extends StatelessWidget {
  // This widget is the root of your application.

  final String title;

  final Map calculationResults;
  final List subAssets;
  final transactions;
  final _addAsset;

  const GenericAssetPage(
    this.title,
    this._addAsset,
    this.calculationResults,
    {
      this.subAssets = const [],
      this.transactions = const []
    }
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          AssetDetailed(calculationResults),
          AssetList(subAssets),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addAsset,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
