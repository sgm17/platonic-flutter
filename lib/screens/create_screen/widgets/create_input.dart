import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/create_provider/providers.dart';

/* Text title_placeholder
    Autogenerated by FlutLab FTF Generator
  */
class CreateInput extends ConsumerWidget {
  const CreateInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(createControllerProvider);
    return Center(
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        maxLines: null,
        textAlign: TextAlign.center,
        maxLength: 200,
        decoration: const InputDecoration(
          counter: SizedBox.shrink(),
          hintText: "Tap to write",
          hintStyle: TextStyle(
            height: 1.2,
            fontSize: 35.0,
            fontFamily: 'DezenPro',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 32.0),
        ),
        style: const TextStyle(
          height: 1.2,
          fontSize: 35.0,
          fontFamily: 'DezenPro',
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
