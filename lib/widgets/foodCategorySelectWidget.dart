// @dart=2.9

import 'package:flutter/material.dart';

class FoodCategorySelect extends StatelessWidget {
  const FoodCategorySelect({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ToggleButtons(
            borderColor: Color.fromARGB(255, 27, 130, 214),
            borderWidth: 3,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            fillColor: Color.fromARGB(255, 218, 136, 233),
            selectedBorderColor: Colors.blue,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('All',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Veg',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Pure Veg',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Egg',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Non Veg',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
            isSelected: [
              true,
              false,
              false,
              false,
              false,
            ],
            onPressed: (i) {},
          ),
        )
      ],
    );
  }
}
