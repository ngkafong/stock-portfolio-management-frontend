import 'package:flutter/material.dart';
import 'package:stock_portfolio_management/pages/add_transaction.dart';
import '../components/generic_asset_page.dart';
import '../constants.dart';
import 'package:http/http.dart' as http;
import '../helper.dart';

class PortfolioPage extends StatelessWidget {

  static const routeName = '/portfolio' ;

  const PortfolioPage();

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map;

    void _addTransaction(){
      Navigator.pushNamed(
        context,
        AddTransactionPage.routeName,
        arguments: {
          'portfolio_id': args['portfolio_id']
        }
      );
    }

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