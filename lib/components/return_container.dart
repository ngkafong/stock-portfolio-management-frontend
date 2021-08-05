import 'package:flutter/material.dart';

class ReturnContainer extends StatelessWidget{

  final double numericValue;
  final double rateValue;

  const ReturnContainer(this.numericValue, this.rateValue);

  String formatNumericValue(double numericValue){
    return (numericValue > 0? '+' : '-') +' \$' + numericValue.abs().toStringAsFixed(2);
  }

  String formatRateValue(double rateValue){
    return (rateValue > 0? '+' : '-') + ' ' + (rateValue*100).abs().toStringAsFixed(2) + '%';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: numericValue > 0? Colors.green: Colors.red,
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Text(formatNumericValue(numericValue)),
          Text(formatRateValue(rateValue))
        ],
      )
    );
  }

}