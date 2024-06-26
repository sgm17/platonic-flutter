import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/* Group bottom_bar
    Autogenerated by FlutLab FTF Generator
  */
class ChatBottombar extends ConsumerWidget {
  const ChatBottombar({super.key, required this.toggleSend});

  final Function({required String message}) toggleSend;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();

    return TextField(
      onSubmitted: (message) {
        toggleSend(message: message);
        controller.clear();
      },
      controller: controller,
      textInputAction: TextInputAction.send,
      textAlignVertical: TextAlignVertical.center,
      maxLines: null,
      maxLength: 200,
      style: const TextStyle(
        fontSize: 16.0,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      decoration: InputDecoration(
        counterText: "",
        contentPadding: const EdgeInsets.all(10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 38, 38, 41),
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 38, 38, 41),
            width: 2.0,
          ),
        ),
        hintText: AppLocalizations.of(context)!.chatInputHintText,
        hintStyle: TextStyle(color: Colors.grey[400]),
      ),
    );
  }
}
