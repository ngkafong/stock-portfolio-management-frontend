import 'package:flutter/material.dart';
import '../components/generic_asset_page.dart';

class PortfolioPage extends StatelessWidget {

  static const routeName = 'portfolio' ;

  const PortfolioPage();

  void _addTransaction(){

  }

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments;
    print(args);

    return GenericAssetPage(
      'Portfolio Page',
      [],
      [],
      [],
      _addTransaction
    );
  }
}