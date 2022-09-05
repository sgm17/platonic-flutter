import 'models.dart';

class User {
  final int id;
  final String username;
  final String? profileImage;
  final Sex sex;
  final bool online;
  final int lastTimeOnline;
  final int universityId;
  final String universityName;
  final String? universityFaculty;
  final String? universityAcronym;
  final int likesGiven;
  final int repliesGiven;
  final int totalChats;
  final List<int> center;

  User(
      this.id,
      this.username,
      this.profileImage,
      this.sex,
      this.online,
      this.lastTimeOnline,
      this.universityId,
      this.universityName,
      this.universityFaculty,
      this.universityAcronym,
      this.likesGiven,
      this.repliesGiven,
      this.totalChats,
      this.center);
}
