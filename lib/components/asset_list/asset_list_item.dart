import 'package:flutter/material.dart';

class AssetListItem extends StatefulWidget {

  final assetsResults;
  const AssetListItem(this.assetsResults);

  @override
  _AssetListItem createState() => _AssetListItem();
}

class _AssetListItem extends State<AssetListItem> {

  var marketValueRow =
      Row(children: [const Text('Market Value'), Text('\$1234.56')]);

  var returnOverviewContainer =
      Column(children: [Text('+ 99.00'), Text('0.58%')]);

  var chart = Column();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      marketValueRow,
      Row(children: [returnOverviewContainer, returnOverviewContainer]),
      chart,
    ]);
  }
}
