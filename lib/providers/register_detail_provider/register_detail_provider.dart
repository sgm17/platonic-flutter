import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/user_repository/src/models/models.dart';

final registerDetailProvider =
    StateProvider<RegisterDetail>((ref) => RegisterDetail.emptyRegisterDetail);
