import 'package:flutter/material.dart';

class AssetDetailed extends StatefulWidget {

  const AssetDetailed({Key? key}) : super(key: key);

  @override
  _AssetDetailedState createState() => _AssetDetailedState();

}

class _AssetDetailedState extends State(AssetDetailed) {

  var marketValueRow = Row(
    children: [
      const Text('Market Value'),
      Text('\$1234.56')
    ]
  )

  var returnOverviewContainer = Column(
    children: [
      Text('+ 99.00'),
      Text('0.58%')
    ]
  )

  var chart = Column()

  var = Row()

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        marketValueRow,
        Row(
          children: [returnOverviewContainer, returnOverviewContainer]
        ),
        chart,

      ]
    )
  }
}