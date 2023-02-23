import 'package:platonic/users_api.dart';
import 'package:platonic/domains/chat_repository/chat_repository.dart';

final List<Message> messages = [
  Message(
      message: '''Missatge dia 12 - 23:15''',
      timestamp: 1676243700000,
      toUid: otherUser.uid),
  Message(
      message: '''Missatge dia 12 - 23:55''',
      timestamp: 1676246100000,
      toUid: otherUser.uid),
  Message(
      message: '''Missatge dia 13 - 00:04''',
      timestamp: 1676246640000,
      toUid: otherUser.uid),
  Message(
      message: '''Missatge dia 13 - 23:05''',
      timestamp: 1676329500000,
      toUid: otherUser.uid),
].reversed.toList();

final List<Conversation> conversations = [
  Conversation(appUser: otherUser, messages: messages),
  Conversation(appUser: otherUser1, messages: messages),
  Conversation(appUser: otherUser2, messages: messages),
  Conversation(appUser: otherUser3, messages: messages),
  Conversation(appUser: otherUser4, messages: messages),
  Conversation(appUser: otherUser5, messages: messages),
];
