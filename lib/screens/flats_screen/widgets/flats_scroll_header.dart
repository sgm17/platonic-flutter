import 'package:platonic/screens/create_flat_screen/step1_screen/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

/* Rectangle wallpaper
    Autogenerated by FlutLab FTF Generator
  */
class FlatsScrollHeader extends ConsumerWidget {
  const FlatsScrollHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void toggleCreateFlatScreen() {
      Navigator.pushNamed(context, '/Step1Screen');
    }

    void toggleNavigateBefore() {
      Navigator.pop(context);
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.5),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: toggleNavigateBefore,
                child: const SizedBox(
                  width: 25.0,
                  height: 25.0,
                  child: NavigateBeforeIconContainer(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              const Flexible(
                child: SizedBox(
                  height: 38.0,
                  child: FlatScrollSearchbar(),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              GestureDetector(
                  onTap: toggleCreateFlatScreen,
                  child: const CreateFlatButton())
            ],
          ),
        ),
      ),
    );
  }
}