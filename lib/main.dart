import 'package:flutter/material.dart';
import 'package:stock_portfolio_management/pages/add_portfolio.dart';
import 'package:stock_portfolio_management/pages/add_transaction.dart';
import 'pages/home.dart';
import 'pages/portfolio.dart';
import 'pages/stock.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Portfolio Management',
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        PortfolioPage.routeName: (context) => const PortfolioPage(),
        StockPage.routeName: (context) => const StockPage(),
        AddPortfolioPage.routeName: (context) => const AddPortfolioPage(),
        AddTransactionPage.routeName: (context) => const AddTransactionPage(),
      }
    );
  }
}
