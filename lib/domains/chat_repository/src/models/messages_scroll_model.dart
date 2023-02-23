import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
part 'messages_scroll_model.freezed.dart';
part 'messages_scroll_model.g.dart';

@freezed
class MessagesScroll with _$MessagesScroll {
  const factory MessagesScroll(
      {required AppUser appUser,
      required String lastMessage}) = _MessagesScroll;

  factory MessagesScroll.fromJson(Map<String, Object?> json) =>
      _$MessagesScrollFromJson(json);
}
