// @dart=2.9

import 'package:flutter/material.dart';

import './widgets/foodCategorySelectWidget.dart';
import './widgets/custHomeBottomNav.dart';
import './widgets/custHomeAppBarWidget.dart';
import './widgets/custSortFoodListWidget.dart';
import './widgets/custHomeBookForWidget.dart';

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
      appBar: CustHomeAppBar(),
      bottomNavigationBar: CustHomeBottomNav(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FoodCategorySelect(),
          CustHomeBookFor(),
          CustSortFoodList(),
        ],
      ),
    );
  }
}
