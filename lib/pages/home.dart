import 'package:flutter/material.dart';
import '../components/generic_asset_page.dart';

class HomePage extends StatelessWidget {

  const HomePage();

  void _addPortfolio(){

  }

  @override
  Widget build(BuildContext context) {
    return GenericAssetPage(
      'HomePage',
      [],
      [],
      [],
      _addPortfolio
    );
  }
}