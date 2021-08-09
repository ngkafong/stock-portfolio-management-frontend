import 'package:flutter/material.dart';

class EditTransactionPage extends StatelessWidget{

  static const routeName = '/edit-transaction';

  const EditTransactionPage();

  void _saveTransaction(){

  }

  @override
  Widget build(BuildContext context) {

    final args = (ModalRoute.of(context)!.settings.arguments ?? {}) as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text('New Transaction'),
      ),
      body: ListView(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.trending_up),
              hintText: 'Symbol of Stock',
              labelText: 'Stock *',
            )
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.trending_up),
              hintText: 'Date of Transaction',
              labelText: 'Date *',
            )
          )
        ],
        padding: EdgeInsets.all(20)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _saveTransaction,
        tooltip: 'Save',
        child: Icon(Icons.save),
      ),
    );
  }

}