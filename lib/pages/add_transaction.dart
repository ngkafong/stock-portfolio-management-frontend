import 'package:flutter/material.dart';
import '../components/generic_add_asset_page.dart';

class AddTransaction extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    const title = '';
    const fields = [{}, {}];

    void _addTransaction(){

    }

    return GenericAddAssetPage(title, fields, _addTransaction);
  }

}