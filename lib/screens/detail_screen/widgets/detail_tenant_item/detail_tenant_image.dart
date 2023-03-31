import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/providers/shared_preferences_provider/providers.dart';

/* Ellipse image
    Autogenerated by FlutLab FTF Generator
  */
class DetailTenantImage extends ConsumerWidget {
  final String? image;

  const DetailTenantImage({Key? key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: image != null
              ? DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    image!,
                    headers: {
                      'Authorization':
                          'Bearer ${ref.read(sharedPreferencesProvider).getString(FIREBASE_TOKEN_ID_KEY) ?? ''}'
                    },
                  ))
              : const DecorationImage(
                  image: AssetImage(
                    'assets/images/default_avatar.jpg',
                  ),
                  fit: BoxFit.cover),
        ));
  }
}
