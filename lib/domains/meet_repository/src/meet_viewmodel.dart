import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/meet_repository/src/meet_repository.dart';
import 'package:platonic/providers/http_provider/providers.dart';
import 'models/models.dart';

class MeetViewmodel implements MeetRepository {
  final Ref ref;

  MeetViewmodel({required this.ref});
  @override
  Future<List<MeetsScroll>> getMeetsScroll() {
    return ref.read(httpViewmodelProvider).getIndexMeetsScroll();
  }
}
