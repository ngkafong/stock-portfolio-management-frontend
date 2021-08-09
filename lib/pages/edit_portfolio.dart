import 'package:flutter/material.dart';

class EditPortfolioPage extends StatelessWidget{

  static const routeName = '/edit-portfolio';

  const EditPortfolioPage();

  void _savePortfolio(){

  }

  @override
  Widget build(BuildContext context) {

    final args = (ModalRoute.of(context)!.settings.arguments ?? {}) as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text('New Portfolio'),
      ),
      body: ListView(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.title),
              hintText: 'Title of the Portfolio',
              labelText: 'Title *',
            )
          )
        ],
        padding: EdgeInsets.all(20)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _savePortfolio,
        tooltip: 'Save',
        child: Icon(Icons.save),
      ),
    );
  }

}