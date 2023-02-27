import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
part 'messages_scroll_model.freezed.dart';
part 'messages_scroll_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class MessagesScroll with _$MessagesScroll {
  const MessagesScroll._();

  const factory MessagesScroll(
      {required int id,
      required AppUser user,
      required String lastMessage}) = _MessagesScroll;

  factory MessagesScroll.fromJson(Map<String, dynamic> json) =>
      _$MessagesScrollFromJson(json);

  Map<String, dynamic> toJson() => _$MessagesScrollToJson(this);
}
