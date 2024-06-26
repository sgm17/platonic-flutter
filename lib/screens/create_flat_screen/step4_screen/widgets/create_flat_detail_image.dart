import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/user_provider/providers.dart';

/* Rectangle Rectangle 18
    Autogenerated by FlutLab FTF Generator
  */
class CreateFlatDetailImage extends ConsumerWidget {
  final String image;

  const CreateFlatDetailImage({Key? key, required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 95,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
              image,
              headers: {'Authorization': 'Bearer ${ref.read(tokenIdProvider)}'},
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}
