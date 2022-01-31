// ignore_for_file:  use_key_in_widget_constructors

import 'package:chat_me/models/user.dart';
import 'package:flutter/material.dart';

class RecentContacts extends StatelessWidget {
  final contactList = User.generateUsers();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      padding: EdgeInsets.only(left: 25),
      height: 50,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      child: Image.asset(
                        contactList[index].iconUrl,
                        width: 40,
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: contactList[index].bgColor,
                          shape: BoxShape.circle),
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 15,
                    ),
                itemCount: contactList.length),
          )
        ],
      ),
    );
  }
}
