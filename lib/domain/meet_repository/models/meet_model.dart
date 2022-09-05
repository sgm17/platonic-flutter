class Meet {
  final int id;
  final int userId;
  final String username;
  final String profileImage;
  final int messagesCount;
  final int endsAt;
  final int startedAt;
  final String? universityParentName;
  final String? universityAcronym;
  final String universityName;
  final String? universityFaculty;

  Meet(
      this.id,
      this.userId,
      this.username,
      this.profileImage,
      this.messagesCount,
      this.endsAt,
      this.startedAt,
      this.universityParentName,
      this.universityAcronym,
      this.universityName,
      this.universityFaculty);
}
