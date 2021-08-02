import 'package:flutter/material.dart';

class AssetDetailed extends StatefulWidget {

  final calculationResult;

  const AssetDetailed(this.calculationResult);

  @override
  _AssetDetailedState createState() => _AssetDetailedState();
}

class _AssetDetailedState extends State<AssetDetailed> {

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
