import 'package:flutter/material.dart';

class AssetListItem extends StatefulWidget {

  final String assetName;
  final assetResults;

  const AssetListItem(this.assetName, this.assetResults);

  @override
  _AssetListItem createState() => _AssetListItem();
}

class _AssetListItem extends State<AssetListItem> {

  var returnOverviewContainer =
      Column(
        children: [Text('+ 99.00'), Text('0.58%')]
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.assetName),
        returnOverviewContainer
      ]
    );
  }
}
