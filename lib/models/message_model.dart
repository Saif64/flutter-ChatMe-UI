import 'package:chat_me/models/user.dart';
import 'package:flutter/material.dart';

class MessageModel {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;
  MessageModel(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});

  // fake data, fetch from your DB instead
  static List<MessageModel> generateHomePageMessages() {
    return [
      MessageModel(users[0], 'Hey there! What\'s up? Is everything going well?',
          '18:32'),
      MessageModel(
          users[1], 'Can I call you back? I\'m in the hospital now.', '14:05'),
      MessageModel(
          users[2], 'Yeah, Do you have any good songs to suggest?', '14:00'),
      MessageModel(users[3],
          'Hi! I went shopping today and I missed your message!', '13:35'),
      MessageModel(users[4],
          'I passed you on the ride into work, have you see me?', '12:11'),
      MessageModel(users[5], 'Hey there! What\'s up? Is everything going well?',
          '12:00'),
    ];
  }

  // message from the first user
  static List<MessageModel> generateMessagesFromUser() {
    return [
      MessageModel(
        users[0],
        'Hey there! What\'s up? Is everything going well?',
        '18:35',
      ),
      MessageModel(
          me,
          'Nothing. Just chilling and watching YouTube. What about you?',
          '18:36'),
      MessageModel(
          users[0],
          'Same here! Been watching YouTube for the past 5 hours despite of having so much to do! 😅',
          '18:39',
          isContinue: true),
      MessageModel(users[0], 'It\'s hard to be productive, man 🙄', '18:39'),
      MessageModel(me, 'Yeah I know, I\'m in the same position 😂', '18:42'),
      MessageModel(users[0], 'lol', '18:55'),
    ];
  }
}

var users = User.generateUsers();
var me = User(0, 'Ruize', 'Nie', 'assets/images/user0.png', Color(0x00ffffff));
