import 'models/models.dart';

abstract class MeetRepository {
  Future<List<Meet>> retrieveMeets(int userId);
}
