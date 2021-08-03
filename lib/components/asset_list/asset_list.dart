import 'package:flutter/material.dart';
import 'package:stock_portfolio_management/components/asset_list/asset_list_item.dart';

class AssetList extends StatefulWidget {

  final List assets;
  const AssetList(this.assets);

  @override
  _AssetList createState() => _AssetList();
}

class _AssetList extends State<AssetList> {

  @override
  Widget build(BuildContext context) {

    return Column(
      children:  widget.assets.map((asset) {
        return AssetListItem(
          asset['name'],
          asset['onPressed'],
          asset
        );
      }).toList()
    );
  }
}
