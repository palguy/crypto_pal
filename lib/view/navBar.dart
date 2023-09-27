// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _curentIndex = 0;

  List<Widget> pages = [
    Home(),
    Home(),
    Home(),
    Home(),
  ];
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: pages.elementAt(_curentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _curentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.orangeAccent,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: ((value) {
            setState(() {
              _curentIndex = value;
            });
          }),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/1.1.png',
                height: myHeight * 0.03,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/1.2.png',
                height: myHeight * 0.03,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/2.1.png',
                height: myHeight * 0.03,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/2.2.png',
                height: myHeight * 0.03,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/3.1.png',
                height: myHeight * 0.03,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/3.2.png',
                height: myHeight * 0.03,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/4.1.png',
                height: myHeight * 0.03,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/4.2.png',
                height: myHeight * 0.03,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
