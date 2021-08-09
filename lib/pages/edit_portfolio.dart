import 'package:flutter/material.dart';

class EditPortfolioPage extends StatelessWidget{

  static const routeName = '/edit-portfolio';

  const EditPortfolioPage();

  void _savePortfolio(){

  }

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text('New Portfolio'),
      ),
      body: ListView(
        children: []
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _savePortfolio,
        tooltip: 'Save',
        child: Icon(Icons.save),
      ),
    );
  }

}