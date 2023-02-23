import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
part 'meets_scroll_model.freezed.dart';
part 'meets_scroll_model.g.dart';

@freezed
class MeetsScroll with _$MeetsScroll {
  const factory MeetsScroll({required AppUser appUser}) = _MeetsScroll;

  factory MeetsScroll.fromJson(Map<String, Object?> json) =>
      _$MeetsScrollFromJson(json);
}
