import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/user_provider/providers.dart';

/* Instance personal_input
    Autogenerated by FlutLab FTF Generator
  */
class PersonalNameInput extends ConsumerWidget {
  const PersonalNameInput({super.key});

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    if (value.length > 10) {
      return 'Name is too long';
    }
    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      return 'Name can only contain letters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      onSaved: (newValue) {
        if (newValue == null) return;
        final updatedState =
            ref.read(userRegisterDetailProvider).copyWith(name: newValue);
        ref.read(userRegisterDetailProvider.notifier).state = updatedState;
      },
      validator: validateName,
      textInputAction: TextInputAction.next,
      textAlignVertical: TextAlignVertical.center,
      maxLength: 10,
      maxLines: null,
      style: const TextStyle(
          height: 1.1530000141688757,
          fontSize: 14.0,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w300,
          color: Color.fromARGB(255, 255, 255, 255)),
      decoration: InputDecoration(
        hintText: '''Your name''',
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
