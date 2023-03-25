import 'package:platonic/providers/user_provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firebaseMessagingProvider =
    StateNotifierProvider<FirebaseMessagingNotifier, String?>(
        (ref) => FirebaseMessagingNotifier(ref));
