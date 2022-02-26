//@dart =2.9

import 'package:flutter/material.dart';

class CustHomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustHomeAppBar({
    Key key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(55.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
