import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/auth_provider/login_provider.dart';
import 'package:platonic/providers/auth_provider/register_provider.dart';

/* Component auth_input
    Autogenerated by FlutLab FTF Generator
  */
class PasswordAuthInput extends ConsumerWidget {
  const PasswordAuthInput({super.key, required this.isLogin});

  final bool isLogin;

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }

    // Check if password is at least 6 characters long
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
        onSaved: (newValue) {
          if (isLogin) {
            ref.read(userLoginProvider.notifier).state =
                ref.read(userLoginProvider).copyWith(password: newValue);
          } else {
            ref.read(userRegisterProvider.notifier).state =
                ref.read(userRegisterProvider).copyWith(password: newValue);
          }
        },
        validator: validatePassword,
        textInputAction: TextInputAction.done,
        textAlignVertical: TextAlignVertical.center,
        maxLength: 50,
        maxLines: 1,
        obscureText: true,
        style: const TextStyle(
            height: 1.1530000141688757,
            fontSize: 14.0,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 255, 255, 255)),
        decoration: InputDecoration(
          errorStyle: const TextStyle(fontSize: 0.01),
          counterText: "",
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                  color: Color.fromARGB(255, 43, 45, 46), width: 1.0)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 43, 45, 46), width: 1.0),
          ),
          hintText: '''Your password''',
          hintStyle: TextStyle(color: Colors.grey[400]),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.red, width: 1.0)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.red, width: 1.0)),
        ));
  }
}
