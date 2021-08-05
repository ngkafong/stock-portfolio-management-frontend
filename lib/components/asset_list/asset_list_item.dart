import 'package:flutter/material.dart';
import 'package:stock_portfolio_management/components/return_container.dart';

class AssetListItem extends StatefulWidget {

  final String name;
  final VoidCallback onPressed;
  final Map calculationResults;

  const AssetListItem(this.name, this.onPressed, this.calculationResults);

  @override
  _AssetListItem createState() => _AssetListItem();
}

class _AssetListItem extends State<AssetListItem> {


  @override
  Widget build(BuildContext context) {
    return InkWell (
      onTap: widget.onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(widget.name),
              Text('\$ ${widget.calculationResults['market_value'].last.toStringAsFixed(2)}')
            ]
          ),
          Row(
            children: [
              ReturnContainer(widget.calculationResults['net_profit'], widget.calculationResults['money_weighted_return_rate']),
              SizedBox(width:6),
              ReturnContainer(widget.calculationResults['daily_profit'], widget.calculationResults['daily_profit_rate'])
            ]
          )
        ]
    ));
  }
}
