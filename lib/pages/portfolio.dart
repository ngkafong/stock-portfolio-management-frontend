import 'package:flutter/material.dart';
import '../components/generic_asset_page.dart';

class PortfolioPage extends StatelessWidget {

  const PortfolioPage();

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments;

    return GenericAssetPage('Portfolio Page');
  }
}