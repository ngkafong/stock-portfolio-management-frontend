import 'package:flutter/material.dart';
import '../components/generic_asset_page.dart';
import '../constants.dart';
import 'package:http/http.dart' as http;

class PortfolioPage extends StatelessWidget {

  static const routeName = '/portfolio' ;

  const PortfolioPage();

  void _addTransaction(){

  }

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map;

    final String dataUrl = serverRootUrl + 'portfolios/' + args['portfolio_id'].toString();

    return GenericAssetPage(
      'Portfolio Page',
      [],
      [],
      [],
      _addTransaction
    );
  }
}