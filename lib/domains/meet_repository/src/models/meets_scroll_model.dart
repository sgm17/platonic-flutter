import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
part 'meets_scroll_model.freezed.dart';
part 'meets_scroll_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class MeetsScroll with _$MeetsScroll {
  const MeetsScroll._();

  const factory MeetsScroll({required int id, required AppUser user}) =
      _MeetsScroll;

  factory MeetsScroll.fromJson(Map<String, dynamic> json) =>
      _$MeetsScrollFromJson(json);

  Map<String, dynamic> toJson() => _$MeetsScrollToJson(this);
}
