import 'package:flutter/material.dart';

class AssetList extends StatefulWidget {

  final assetsResults;
  const AssetList(this.assetsResults);

  @override
  _AssetList createState() => _AssetList();
}

class _AssetList extends State<AssetList> {

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
