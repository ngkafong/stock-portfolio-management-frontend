import 'package:flutter/material.dart';
import 'package:stock_portfolio_management/pages/loading.dart';
import '../components/generic_asset_page.dart';
import '../constants.dart';
import '../helper.dart';
import 'edit_transaction.dart';

class StockPage extends StatelessWidget {

  static const routeName = '/stock';

  const StockPage();

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map;

    void _addTransaction(){
      Navigator.pushNamed(
        context,
        EditTransactionPage.routeName,
        arguments: {
          'portfolio_id': args['portfolio_id'],
          'stock_symbol': args['stock_symbol']
        }
      );
    }

    final Uri dataUrl = Uri.parse(
      serverRootUrl +
      'portfolio-stocks/' +
      args['portfolio_id'].toString() +
      ','+
      args['stock_symbol']
    );

    final Future<Map> data = fetchJson(dataUrl);

    return FutureBuilder(
      future: data,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return GenericAssetPage(
            'Stock Page',
            _addTransaction,
            snapshot.data['calculation_results'],
            transactions: snapshot.data['transactions']
          );
        } else {
          return LoadingPage();
        }
      }
    );
  }
}