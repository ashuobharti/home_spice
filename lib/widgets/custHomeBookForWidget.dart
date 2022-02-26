//@dart=2.9

import 'package:flutter/material.dart';

class CustHomeBookFor extends StatefulWidget {
  const CustHomeBookFor({Key key}) : super(key: key);

  @override
  State<CustHomeBookFor> createState() => _CustHomeBookForState();
}

class _CustHomeBookForState extends State<CustHomeBookFor> {
  String dropdownValue = 'Breakfast';
  String dropdownDateValue = 'Today';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Book For',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        DropdownButton<String>(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          value: dropdownDateValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.purple),
          onChanged: (String newValue) {
            setState(() {
              dropdownDateValue = newValue;
            });
          },
          items: <String>['Today', 'Tomorrow', 'Dayafter']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        SizedBox(width: 5),
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
          items: <String>['Breakfast', 'Lunch', 'Dinner', 'Eve Snacks']
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
