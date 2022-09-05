import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/chat_repository/src/models/models.dart';

class ChatNotifier extends StateNotifier<AsyncValue<Chat>> {
  final Reader _read;

  ChatNotifier(this._read) : super(AsyncValue.loading()) {}
}
