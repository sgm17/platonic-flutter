import 'models.dart';

class University {
  final int id;
  final String? acronym;
  final String type;
  final String? associateName;
  final String? parentName;
  final String name;
  final String address;
  final String simple;
  final List<int> center;
  final String image;
  final IncludeUniversity? includes;

  University(
      this.id,
      this.acronym,
      this.type,
      this.associateName,
      this.parentName,
      this.name,
      this.address,
      this.simple,
      this.center,
      this.image,
      this.includes);
}
