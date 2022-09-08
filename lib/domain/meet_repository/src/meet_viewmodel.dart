import 'package:platonic/domain/api_data.dart';
import 'meet_repository.dart';
import 'models/models.dart';

class MeetViewmodel implements MeetRepository {
  @override
  Future<MeetData> retrieveMeets(int userId) {
    return Future.delayed(const Duration(seconds: 1), () {
      return MeetData(meets: meets, searching: false);
    });
  }
}
