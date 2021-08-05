import 'package:flutter/material.dart';
import 'package:stock_portfolio_management/components/return_container.dart';

class AssetDetailed extends StatefulWidget {

  final Map calculationResults;

  const AssetDetailed(this.calculationResults);

  @override
  _AssetDetailedState createState() => _AssetDetailedState();
}

class _AssetDetailedState extends State<AssetDetailed> {

  var chart = Column();

  @override
  Widget build(BuildContext context) {

    final _marketValueRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [const Text('Market Value'), Text('\$${widget.calculationResults['market_value'].last}')]
    );

    var _returnOverviewRow = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Total Return'),
        SizedBox(width: 4),
        ReturnContainer(
          widget.calculationResults['net_profit'].last,
          widget.calculationResults['money_weighted_return_rate'].last
        ),
        SizedBox(width: 16),
        Text('Daily Return'),
        SizedBox(width: 4),
        ReturnContainer(
          widget.calculationResults['daily_profit'].last,
          widget.calculationResults['daily_profit_rate'].last
        )
      ],
    );

    return Column(
      children: [
        _marketValueRow,
        SizedBox(height: 8.0),
        _returnOverviewRow,
        SizedBox(height: 8.0),
        chart,
      ]
    );
  }
}
