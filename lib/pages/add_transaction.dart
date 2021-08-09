import 'package:flutter/material.dart';

class AddTransactionPage extends StatelessWidget{

  static const routeName = '/add-transaction';

  const AddTransactionPage();

  void _saveTransaction(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Transaction'),
      ),
      body: ListView(
        children: []
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _saveTransaction,
        tooltip: 'Save',
        child: Icon(Icons.save),
      ),
    );
  }

}