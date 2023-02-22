import 'package:platonic/users_api.dart';

import 'domain/chat_repository/src/models/models.dart';

final List<Message> messages = [
  const Message(
      message: '''Missatge dia 12 - 23:15''',
      timestamp: 1676243700000,
      isSender: true),
  const Message(
      message: '''Missatge dia 12 - 23:55''',
      timestamp: 1676246100000,
      isSender: false),
  const Message(
      message: '''Missatge dia 13 - 00:04''',
      timestamp: 1676246640000,
      isSender: true),
  const Message(
      message: '''Missatge dia 13 - 23:05''',
      timestamp: 1676329500000,
      isSender: false),
].reversed.toList();

final List<Conversation> conversations = [
  Conversation(appUser: otherUser, messages: messages),
  Conversation(appUser: otherUser1, messages: messages),
  Conversation(appUser: otherUser2, messages: messages),
  Conversation(appUser: otherUser3, messages: messages),
  Conversation(appUser: otherUser4, messages: messages),
  Conversation(appUser: otherUser5, messages: messages),
];
