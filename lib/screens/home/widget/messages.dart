// ignore_for_file:  use_key_in_widget_constructors
import 'package:chat_me/constants/colors.dart';
import 'package:chat_me/models/message_model.dart';
import 'package:chat_me/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  final messageList = MessageModel.generateHomePageMessages();
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: _buildMessages(),
    ));
  }

  Widget _buildMessages() {
    return ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => _buildMessage(context, index),
        separatorBuilder: (_, index) => SizedBox(
              height: 30,
            ),
        itemCount: messageList.length);
  }

  Widget _buildMessage(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(messageList[index])));
      },
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: messageList[index].user.bgColor,
                  shape: BoxShape.circle),
              child: Image.asset(
                messageList[index].user.iconUrl,
                width: 60,
              )),
          SizedBox(width: 10),
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${messageList[index].user.firstName} ${messageList[index].user.lastName}',
                      style: TextStyle(
                          fontSize: 16,
                          color: kPrimaryDark,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      messageList[index].lastTime,
                      style: TextStyle(color: kGreyLight),
                    )
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  messageList[index].lastMessage,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: kPrimaryDark),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
