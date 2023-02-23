import 'package:platonic/domains/meet_repository/src/meet_repository.dart';
import 'package:platonic/meets_api.dart';
import 'models/models.dart';

class MeetViewmodel implements MeetRepository {
  @override
  Future<List<MeetsScroll>> retrieveMeetScroll() {
    return Future.delayed(const Duration(seconds: 1), () => meets);
  }
}
