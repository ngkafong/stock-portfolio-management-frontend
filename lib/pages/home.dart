import 'package:flutter/material.dart';
import '../components/generic_asset_page.dart';
import 'portfolio.dart';

class HomePage extends StatelessWidget {

  static const routeName = '/' ;

  const HomePage();

  void _addPortfolio(){

  }

  @override
  Widget build(BuildContext context) {

    void _navigateToPortfolio(int portfolio_id) {
      Navigator.pushNamed(
        context,
        PortfolioPage.routeName,
        arguments: {
          'portfolio_id': portfolio_id
      });
    }

    var portfolios = [
      {'portfolio_id': 1, 'name': 'Portfolio 1', 'onPressed': () => _navigateToPortfolio(1) },
      {'portfolio_id': 2, 'name': 'Portfolio 2', 'onPressed': () => _navigateToPortfolio(2) },
      {'portfolio_id': 3, 'name': 'Portfolio 3', 'onPressed': () => _navigateToPortfolio(3) },
    ];

    return GenericAssetPage(
      'HomePage',
      _addPortfolio,
      {},
      subAssets: portfolios,
    );
  }
}