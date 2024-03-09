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
      debugShowCheckedModeBanner: false,
      title: 'Groww',
      home: Scaffold(

        backgroundColor: Colors.white10,
        appBar: AppBar(
          backgroundColor: const Color(0xFF121212),
          title: const Column(
            children: [
              Text(
                'Stocks',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          leadingWidth: 45,
          leading: const CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage('assets/image/grow_logo.png'),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.qr_code, color: Colors.white),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Material(
                      child: Ink.image(
                        image: const AssetImage('assets/image/profile_logo.jpg'),
                        fit: BoxFit.cover,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8)
              ],
            ),
          ],
        ),

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
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}