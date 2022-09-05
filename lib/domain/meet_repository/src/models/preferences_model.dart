import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../university_repository/src/models/models.dart';
import '../../../user_repository/src/models/models.dart';

part 'preferences_model.freezed.dart';
part 'preferences_model.g.dart';

@freezed
abstract class Preferences with _$Preferences {
  const factory Preferences(
      {required University university, required Sex sex}) = _Preferences;

  factory Preferences.fromJson(Map<String, Object?> json) =>
      _$PreferencesFromJson(json);
}
