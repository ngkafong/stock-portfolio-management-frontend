import 'package:flutter/material.dart';
import 'package:stock_portfolio_management/components/asset_list/asset_list_item.dart';

class AssetList extends StatefulWidget {

  final List assetsResults;
  const AssetList(this.assetsResults);

  @override
  _AssetList createState() => _AssetList();
}

class _AssetList extends State<AssetList> {

  @override
  Widget build(BuildContext context) {

    return Column(
      children:  widget.assetsResults.map((assetResults) {
        return AssetListItem(assetResults);
      }).toList()
    );
  }
}
