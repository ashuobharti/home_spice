// @dart=2.9
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeSpice',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
      ),
      home: CustomerHomePage(),
    );
  }
}

class CustomerHomePage extends StatelessWidget {
  const CustomerHomePage({Key key}) : super(key: key);
  final route = '/customerHomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Spice',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
        leading: Container(
          width: 30,
          height: 95,
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on,
                size: 20,
              ),
              Text(
                'ONGC Goregaon',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_box_rounded,
              size: 35,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 159, 56, 177),
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(234, 0, 0, 0),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.support_agent_rounded), label: 'Support'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
          ]),
    );
  }
}
