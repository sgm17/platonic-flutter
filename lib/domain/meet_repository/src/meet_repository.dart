import 'models/models.dart';

abstract class MeetRepository {
  Future<MeetData> retrieveMeets(int userId);
}
