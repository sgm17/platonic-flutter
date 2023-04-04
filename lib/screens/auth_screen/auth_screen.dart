import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/auth_provider/providers.dart';
import 'package:platonic/screens/auth_screen/login_screen/login_screen.dart';
import 'package:platonic/screens/auth_screen/register_screen/register_screen.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  AuthScreenState createState() => AuthScreenState();
}

class AuthScreenState extends ConsumerState<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    if (authState) {
      return const RegisterScreen();
    } else {
      return const LoginScreen();
    }
  }
}
