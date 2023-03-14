import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/auth_provider/auth_error_provider.dart';
import 'package:platonic/providers/auth_provider/auth_provider.dart';
import 'package:platonic/screens/auth_screen/login/login_screen.dart';
import 'package:platonic/screens/auth_screen/register/register_screen.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final authErrorState = ref.watch(authErrorProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (authErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => Column(
                  children: [
                    ErrorDialogItem(error: authErrorState.toString()),
                  ],
                ));
      }
    });
    if (authState == true) {
      // RegisterScreen mode
      return const RegisterScreen();
    } else {
      // LoginScreen mode
      return const LoginScreen();
    }
  }
}
