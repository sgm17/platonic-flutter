import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';
part 'meet_data.freezed.dart';
part 'meet_data.g.dart';

@freezed
abstract class MeetData with _$MeetData {
  const factory MeetData({required List<Meet> meets, required bool searching}) =
      _MeetData;

  factory MeetData.fromJson(Map<String, Object?> json) =>
      _$MeetDataFromJson(json);
}
