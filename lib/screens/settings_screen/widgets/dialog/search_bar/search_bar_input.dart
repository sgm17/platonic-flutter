import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/dialog_provider/search_bar_provider.dart';

/* Text Search faculties
    Autogenerated by FlutLab FTF Generator
  */
class SearchBarInput extends ConsumerWidget {
  final String placeholder;

  const SearchBarInput({super.key, required this.placeholder});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      onChanged: (text) => ref.read(searchBarProvider.notifier).state = text,
      textAlignVertical: TextAlignVertical.center,
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 16.0,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        isCollapsed: true,
        border: InputBorder.none,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w300,
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
