import 'package:flutter/material.dart';
import '../components/generic_add_asset_page.dart';

class AddPortfolio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    const title = '';
    const fields = [{}, {}];

    void _addPortfolio(){

    }

    return GenericAddAssetPage(title, fields, _addPortfolio);
  }

}