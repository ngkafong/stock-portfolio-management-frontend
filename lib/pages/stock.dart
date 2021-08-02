import 'package:flutter/material.dart';
import '../components/generic_asset_page.dart';

class StockPage extends StatelessWidget {

  const StockPage();

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments;

    return GenericAssetPage('Stock Page');
  }
}