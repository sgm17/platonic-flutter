import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/user_provider/firebase_user_notifier.dart';

final firebaseUserProvider = StateNotifierProvider<FirebaseUserNotifier, User?>(
    (ref) => FirebaseUserNotifier(ref));
