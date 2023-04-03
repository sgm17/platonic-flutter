import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/auth_provider/login_provider.dart';
import 'package:platonic/providers/auth_provider/register_provider.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/* Component auth_input
    Autogenerated by FlutLab FTF Generator
  */
class EmailAuthInput extends ConsumerWidget {
  const EmailAuthInput({super.key, required this.isLogin});

  final bool isLogin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String? validateEmail(String? value) {
      if (value == null || value.isEmpty) {
        ref.read(authErrorProvider.notifier).state =
            const ErrorApp(code: 'authemptyemaildialog');
        return 'Please enter an email address';
      }

      // Check if email is in the correct format
      final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$');
      if (!emailRegex.hasMatch(value)) {
        ref.read(authErrorProvider.notifier).state =
            const ErrorApp(code: 'authvalidemaildialog');
        return 'Please enter a valid email address';
      }

      return null;
    }

    return TextFormField(
        onSaved: (newValue) {
          if (isLogin) {
            ref.read(userLoginProvider.notifier).state =
                ref.read(userLoginProvider).copyWith(email: newValue);
          } else {
            ref.read(userRegisterProvider.notifier).state =
                ref.read(userRegisterProvider).copyWith(email: newValue);
          }
        },
        validator: validateEmail,
        textInputAction: TextInputAction.next,
        textAlignVertical: TextAlignVertical.center,
        maxLength: 50,
        maxLines: null,
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
          hintText: AppLocalizations.of(context)!.emailAuthInputHintText,
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