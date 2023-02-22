import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../university_repository/src/models/models.dart';
part 'meet_settings_model.freezed.dart';
part 'meet_settings_model.g.dart';

@freezed
class MeetSettings with _$MeetSettings {
  const factory MeetSettings(
      {required bool meetStatus,
      required Sex sexToMeet,
      University? universityToMeet,
      required List<Faculty> facultiesToMeet}) = _MeetSettings;

  static const MeetSettings emptyMeetSettings =
      MeetSettings(meetStatus: true, sexToMeet: Sex.male, facultiesToMeet: []);

  factory MeetSettings.fromJson(Map<String, Object?> json) =>
      _$MeetSettingsFromJson(json);
}
