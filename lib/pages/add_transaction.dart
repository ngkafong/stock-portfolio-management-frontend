import 'package:flutter/material.dart';
import '../components/generic_add_asset_page.dart';

class AddTransactionPage extends StatelessWidget{

  static const routeName = '/add-transaction';

  const AddTransactionPage();

  @override
  Widget build(BuildContext context) {

    const title = '';
    const fields = [{}, {}];

    void _addTransaction(){

    }

    return GenericAddAssetPage(title, fields, _addTransaction);
  }

}