import 'package:flutter/material.dart';
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
        '/': (context) => const HomePage(),
        '/portfolio': (context) => const PortfolioPage(),
        '/stock': (context) => const StockPage()
      }
    );
  }
}
