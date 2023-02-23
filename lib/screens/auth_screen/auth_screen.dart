import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/auth_provider/auth_provider.dart';
import 'package:platonic/screens/auth_screen/login/login_screen.dart';
import 'package:platonic/screens/auth_screen/register/register_screen.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    if (authState == true) {
      // RegisterScreen mode
      return const RegisterScreen();
    } else {
      // LoginScreen mode
      return const LoginScreen();
    }
  }
}
