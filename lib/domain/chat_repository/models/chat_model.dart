import '../../user_repository/models/models.dart';
import 'models.dart';

class Chat {
  final int from;
  final int to;
  final User toUser;
  final List<Message> messages;
  final dynamic action;

  Chat(this.from, this.to, this.toUser, this.messages, this.action);
}
