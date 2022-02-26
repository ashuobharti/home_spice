//@dart=2.9

import 'package:flutter/material.dart';

class CustSortFoodList extends StatefulWidget {
  const CustSortFoodList({Key key}) : super(key: key);

  @override
  State<CustSortFoodList> createState() => _CustSortFoodListState();
}

class _CustSortFoodListState extends State<CustSortFoodList> {
  String dropdownValue = 'Ratings';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Sort Options By',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        DropdownButton<String>(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['Ratings', 'Price', 'Ready by 9', 'Ready by 10']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
