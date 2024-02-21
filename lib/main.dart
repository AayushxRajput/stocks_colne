import 'package:flutter/material.dart';
import 'package:stocks_colne/home/home_page.dart';
import 'package:stocks_colne/pay/home_page.dart';
import 'mutual_funds/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
   const HomePage(),
   const MutualFunds(),
   const Pay(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groww',
      home: Scaffold(

        body: _screens[_selectedIndex],

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white12,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: 'Stocks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              label: 'Mutual Funds',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: 'Pay',
            ),
          ],
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
        ),

      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}