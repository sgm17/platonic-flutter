import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/chat_repository/src/chat_viewmodel.dart';

final chatViewmodelProvider = Provider((ref) => ChatViewmodel());
