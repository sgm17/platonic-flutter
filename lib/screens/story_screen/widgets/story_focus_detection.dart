import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:platonic/domains/story_repository/story_repository.dart';
import 'package:platonic/providers/story_provider/providers.dart';

class StoryFocusDetection extends ConsumerWidget {
  const StoryFocusDetection(
      {super.key,
      required this.stories,
      required this.focusNode,
      required this.popupMenuButtonKey});

  final List<Story> stories;
  final FocusNode focusNode;
  final GlobalKey popupMenuButtonKey;

  void toggleTextField() {
    focusNode.requestFocus();
  }

  Future<void> toggleFavourite(WidgetRef ref, int storyId) async {
    await ref
        .read(storiesProvider.notifier)
        .toggleStoryFavourite(storyId: storyId);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storyViewIdState = ref.watch(storyViewIdProvider);

    return Stack(
      children: [
        Positioned(
            top: 25,
            right: 30,
            child: GestureDetector(
                onTap: togglePopupMenuButton,
                child: Container(
                  color: Colors.transparent,
                  height: 30,
                  width: 20,
                ))),
        Column(
          children: [
            Expanded(
              child: IgnorePointer(
                ignoring: true,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Row(
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: toggleTextField,
                      child: Container(
                        height: 48.0,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  GestureDetector(
                    onTap: () => toggleFavourite(ref, storyViewIdState),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      color: Colors.transparent,
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  void togglePopupMenuButton() {
    final RenderBox? renderBox =
        popupMenuButtonKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final RenderBox? parent =
        popupMenuButtonKey.currentContext?.findRenderObject() as RenderBox?;
    if (parent == null) return;

    final target = parent.localToGlobal(Offset.zero);

    showMenu(
      context: popupMenuButtonKey.currentContext!,
      position:
          RelativeRect.fromLTRB(target.dx, target.dy, target.dx, target.dy),
      items: const [
        PopupMenuItem(
          child: Text('Delete Story',
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w800,
                  color: Colors.red)),
        ),
      ],
    );
  }
}
