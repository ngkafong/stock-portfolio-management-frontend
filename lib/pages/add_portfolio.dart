import 'package:flutter/material.dart';
import '../components/generic_add_asset_page.dart';

class AddPortfolioPage extends StatelessWidget{

  static const routeName = '/add-portfolio' ;

  const AddPortfolioPage();

  @override
  Widget build(BuildContext context) {

    const title = '';
    const fields = [{}, {}];

    void _addPortfolio(){

    }

    return GenericAddAssetPage(title, fields, _addPortfolio);
  }

}