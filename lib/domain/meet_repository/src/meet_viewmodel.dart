import 'package:platonic/domain/api_data.dart';
import 'package:platonic/domain/meet_repository/src/models/meet_model.dart';

import 'meet_repository.dart';

class MeetViewmodel implements MeetRepository {
  @override
  Future<List<Meet>> retrieveMeets(int userId) {
    return Future.delayed(const Duration(seconds: 1), () {
      return meets;
    });
  }
}
