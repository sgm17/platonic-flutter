import 'models/models.dart';

abstract class MeetRepository {
  Future<List<MeetsScroll>> getMeetsScroll();
  Future<bool> deleteMeet({required int meetId});
}
