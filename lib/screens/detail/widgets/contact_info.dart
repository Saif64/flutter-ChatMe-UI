// ignore_for_file:  use_key_in_widget_constructors
import 'package:chat_me/models/message_model.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final MessageModel messageModel;
  ContactInfo(this.messageModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 15, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${messageModel.user.firstName}\n${messageModel.user.lastName}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white,
                height: 1.2),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.call,
                  size: 23,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    elevation: 8,
                    shape: CircleBorder()),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.video_call,
                  size: 23,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    elevation: 8,
                    shape: CircleBorder()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
