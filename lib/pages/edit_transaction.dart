import 'package:flutter/material.dart';

class EditTransactionPage extends StatefulWidget{

  static const routeName = '/edit-transaction';

  const EditTransactionPage();

  _EditTransactionPageState createState() => _EditTransactionPageState();
}

class _EditTransactionPageState extends State<EditTransactionPage> {

  @override
  Widget build(BuildContext context) {

    final args = (ModalRoute.of(context)!.settings.arguments ?? {}) as Map;

    final _formKey = GlobalKey<FormState>();

    void _saveTransaction(){

    }

    return Scaffold(
      appBar: AppBar(
        title: Text('New Transaction'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(children:[
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
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _saveTransaction,
        tooltip: 'Save',
        child: Icon(Icons.save),
      ),
    );
  }

}