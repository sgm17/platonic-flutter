import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/user_repository/src/user_viewmodel.dart';

final Provider userViewmodelProvider = Provider((ref) => UserViewmodel());
