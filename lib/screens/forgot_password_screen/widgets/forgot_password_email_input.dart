import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/* Group email
    Autogenerated by FlutLab FTF Generator
  */
class ForgotPasswordEmailInput extends StatelessWidget {
  const ForgotPasswordEmailInput({super.key});

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email address';
    }

    // Check if email is in the correct format
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validateEmail,
      textInputAction: TextInputAction.next,
      textAlignVertical: TextAlignVertical.center,
      maxLines: 1,
      style: const TextStyle(
          height: 1.1530000141688757,
          fontSize: 14.0,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w300,
          color: Color.fromARGB(255, 255, 255, 255)),
      decoration: InputDecoration(
        hintText:
            AppLocalizations.of(context)!.forgotPasswordEmailInputHintText,
        hintStyle: TextStyle(color: Colors.grey[400]),
        counterText: "",
        errorStyle: const TextStyle(fontSize: 0.01),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 43, 45, 46), width: 1.0)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 43, 45, 46), width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.red, width: 1.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.red, width: 1.0)),
      ),
    );
  }
}
