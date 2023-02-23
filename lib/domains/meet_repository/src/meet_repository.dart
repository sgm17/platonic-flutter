import 'models/models.dart';

abstract class MeetRepository {
  Future<List<MeetsScroll>> retrieveMeetScroll();
}
