//@dart=2.9

import 'package:flutter/material.dart';

class CustHomeBottomNav extends StatelessWidget {
  const CustHomeBottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 159, 56, 177),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(234, 0, 0, 0),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.support_agent_rounded), label: 'Support'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ]);
  }
}
