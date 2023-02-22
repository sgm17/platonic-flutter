import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../user_repository/src/models/models.dart';
import 'package:platonic/domain/user_repository/src/models/app_user_model.dart';
part 'meets_scroll_model.freezed.dart';
part 'meets_scroll_model.g.dart';

@freezed
class MeetsScroll with _$MeetsScroll {
  const factory MeetsScroll({required AppUser appUser}) = _MeetsScroll;

  factory MeetsScroll.fromJson(Map<String, Object?> json) =>
      _$MeetsScrollFromJson(json);
}
