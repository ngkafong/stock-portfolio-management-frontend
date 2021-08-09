import 'package:flutter/material.dart';
import 'package:stock_portfolio_management/pages/loading.dart';
import '../components/generic_asset_page.dart';
import '../constants.dart';
import '../helper.dart';
import 'portfolio.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  const HomePage();

  void _addPortfolio() {}

  @override
  Widget build(BuildContext context) {
    void _navigateToPortfolio(int portfolio_id) {
      Navigator.pushNamed(context, PortfolioPage.routeName,
          arguments: {'portfolio_id': portfolio_id});
    }

    final Uri dataUrl = Uri.parse(serverRootUrl + 'overall');

    final Future<Map> data = fetchJson(dataUrl);

    return FutureBuilder(
        future: data,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return GenericAssetPage(
              'HomePage',
              _addPortfolio,
              snapshot.data['calculation_results'],
              subAssets: snapshot.data['portfolios']
                  .map((portfolio) => {
                        'onPressed': () =>
                            _navigateToPortfolio(portfolio['portfolio_id']),
                        'name': portfolio['title'],
                        ...portfolio
                      })
                  .toList(),
            );
          } else {
            return LoadingPage();
          }
        });
  }
}
