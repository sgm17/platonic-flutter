import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/providers/shared_preferences_provider/providers.dart';

/* Ellipse image
    Autogenerated by FlutLab FTF Generator
  */
class MessageImage extends ConsumerWidget {
  final String? profileImage;

  const MessageImage({super.key, required this.profileImage});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: profileImage == null
              ? const DecorationImage(
                  image: AssetImage(
                    'assets/images/default_avatar.jpg',
                  ),
                  fit: BoxFit.cover,
                )
              : DecorationImage(
                  image: NetworkImage(profileImage!, headers: {
                    'Authorization':
                        'Bearer ${ref.read(sharedPreferencesProvider).getString(FIREBASE_TOKEN_ID_KEY) ?? ''}'
                  }),
                  fit: BoxFit.cover,
                ),
        ));
  }
}
