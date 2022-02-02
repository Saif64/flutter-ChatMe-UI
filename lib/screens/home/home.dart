// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:chat_me/screens/home/widget/messages.dart';
import 'package:chat_me/screens/home/widget/recent_contacts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chat With\nyour friends',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Image.asset(
                      'assets/images/user0.png',
                      width: 40,
                    ),
                  )
                ],
              ),
            ),
            RecentContacts(),
            Messages()
          ],
        ),
      ),
    );
  }
}
