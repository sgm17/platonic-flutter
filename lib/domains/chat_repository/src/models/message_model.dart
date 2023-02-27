import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/helpers/serialize/datetime_converter.dart';
part 'message_model.freezed.dart';
part 'message_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class Message with _$Message {
  const Message._();

  const factory Message({
    required int id,
    required String message,
    required int userId,
    @DateTimeConverter() required DateTime createdAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
