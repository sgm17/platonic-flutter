import 'models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User(
      {required int id,
      required String username,
      String? profileImage,
      required Sex sex,
      required bool online,
      required int lastTimeOnline,
      required int universityId,
      required String universityName,
      String? universityFaculty,
      String? universityAcronym,
      required int likesGiven,
      required int repliesGiven,
      required int totalChats,
      required List<int> center}) = _User;
}
