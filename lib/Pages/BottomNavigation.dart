import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vorem/Pages/HomePage.dart';
import 'package:vorem/Pages/MarketPlace.dart';
import 'package:vorem/Pages/TransactionPage.dart';
import 'package:vorem/Pages/ProfilePage.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final _children = [
    HomePage(),
    MarketPlace(),
    TransactionPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {

    void onTappedBar(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.signal_cellular_alt_rounded,
            ),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.repeat_rounded,
            ),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_rounded,
            ),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: TextStyle(
            fontFamily: 'OpenSans_Bold',
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.bold),
        selectedItemColor: HexColor("#33a59e"),
        selectedIconTheme: IconThemeData(
          color: HexColor("#33a59e"),
        ),
      ),
    );
  }
}

