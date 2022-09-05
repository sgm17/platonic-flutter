class Story {
  final int id;
  final int userId;
  final String username;
  final String profileImage;
  final String? facultyName;
  final String body;
  final String backgroundColor;
  final int createdAt;

  Story(this.id, this.userId, this.username, this.profileImage,
      this.facultyName, this.body, this.backgroundColor, this.createdAt);
}
