import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/create_flat_screen/step1_screen/widgets/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

class NavigateBeforeDetail extends ConsumerWidget {
  const NavigateBeforeDetail(
      {super.key,
      required this.toggleDeleteFlat,
      required this.bookmark,
      required this.owner,
      required this.flat});

  final bool bookmark;
  final AppUser owner;
  final FlatModel flat;
  final Future<void> Function() toggleDeleteFlat;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.read(appUserProvider);
    final ownFlat = userState.id == owner.id;

    Future<void> toggleBookmarkFlat() async {
      await ref
          .read(flatsScrollProvider.notifier)
          .addOrRemoveBookmarkScroll(flatId: flat.id, isFlatsScroll: false);
    }

    void toggleEditFlat() {
      ref.read(flatCreateProvider.notifier).setEditState(flat: flat);
      Navigator.pushNamed(context, '/Step1Screen');
    }

    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const SizedBox(
          width: 25.0,
          height: 25.0,
          child: NavigateBeforeIconContainer(
            color: Colors.white,
          ),
        ),
      ),
      SizedBox(
        height: 25.0,
        child: NavigateBeforeTitle(
          title: AppLocalizations.of(context)!.detailNavigatorTitle,
          color: Colors.white,
        ),
      ),
      if (ownFlat)
        Row(
          children: [
            GestureDetector(
              onTap: toggleEditFlat,
              child: const NavigateBeforeDetailIconContainer(
                  child: Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.white,
              )),
            ),
            const SizedBox(
              width: 16.0,
            ),
            GestureDetector(
              onTap: toggleDeleteFlat,
              child: const NavigateBeforeDetailIconContainer(
                  child: Icon(
                Icons.delete,
                size: 20.0,
                color: Colors.red,
              )),
            )
          ],
        )
      else
        GestureDetector(
          onTap: toggleBookmarkFlat,
          child: NavigateBeforeDetailIconContainer(
              child: bookmark
                  ? const Icon(Icons.bookmark,
                      size: 20.0, color: Color.fromARGB(255, 232, 236, 0))
                  : const Icon(
                      Icons.bookmark_outline,
                      size: 20.0,
                      color: Colors.white,
                    )),
        )
    ]);
  }
}
