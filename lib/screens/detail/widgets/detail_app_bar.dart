// ignore_for_file:  use_key_in_widget_constructors
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.red, elevation: 4, shape: CircleBorder()),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.search_rounded,
              size: 20,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.indigo, elevation: 4, shape: CircleBorder()),
          ),
        ],
      ),
    );
  }
}
