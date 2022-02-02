import 'package:chat_me/models/message_model.dart';
import 'package:chat_me/screens/chatList/widgets/contact_info.dart';
import 'package:chat_me/screens/chatList/widgets/detail_app_bar.dart';
import 'package:chat_me/screens/chatList/widgets/detail_message.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final MessageModel message;
  DetailPage(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          DetailAppBar(),
          ContactInfo(message),
          Expanded(child: DetailMessages())
        ],
      ),
    );
  }
}
