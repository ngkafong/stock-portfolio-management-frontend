import 'package:flutter/material.dart';
import '../components/generic_asset_page.dart';
import '../constants.dart';
import 'package:http/http.dart' as http;
import '../helper.dart';

class PortfolioPage extends StatelessWidget {

  static const routeName = '/portfolio' ;

  const PortfolioPage();

  void _addTransaction(){

  }

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map;

    final Uri dataUrl = Uri.parse(serverRootUrl + 'portfolios/' + args['portfolio_id'].toString());

    final Future<Map> data = fetchJson(dataUrl);

    return FutureBuilder(
      future: data,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return GenericAssetPage(
            'Portfolio Page',
            _addTransaction,
            snapshot.data.calculation_result,
            subAssets: snapshot.data.portfolio_stocks.map(
              (stock) => {
                'name': stock['name'],
                ...stock
              }
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      }
    );
  }
}