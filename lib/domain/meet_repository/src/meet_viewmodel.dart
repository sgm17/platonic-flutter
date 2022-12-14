import 'package:platonic/domain/api_data.dart';
import 'meet_repository.dart';
import 'models/models.dart';

class MeetViewmodel implements MeetRepository {
  @override
  Future<List<Meet>> retrieveMeets(int userId) {
    return Future.delayed(const Duration(seconds: 1), () {
      return meets;
    });
  }
}
