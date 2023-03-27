import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/providers/meet_provider/match_user_provider.dart';
import 'package:platonic/providers/shared_preferences_provider/providers.dart';
import 'package:platonic/screens/match_screen/widgets/widgets.dart';

/* Frame match
    Autogenerated by FlutLab FTF Generator
  */
class MatchScreen extends ConsumerStatefulWidget {
  const MatchScreen({super.key});

  @override
  MatchScreenState createState() => MatchScreenState();
}

class MatchScreenState extends ConsumerState<MatchScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _translateAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _translateAnimation =
        Tween<double>(begin: 200, end: 0).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
    ));
    _scaleAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.5, 1.0, curve: Curves.elasticOut),
    ));

    _controller.forward();

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.fastOutSlowIn)));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final matchUserState = ref.watch(matchUserProvider);

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: matchUserState?.meetPicture == null
                    ? const DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Color.fromARGB(178, 27, 26, 29), BlendMode.srcATop),
                        image: AssetImage(
                            "assets/images/meet_picture_default.png"),
                        fit: BoxFit.cover)
                    : DecorationImage(
                        colorFilter: const ColorFilter.mode(
                            Color.fromARGB(178, 27, 26, 29), BlendMode.srcATop),
                        image: NetworkImage(matchUserState!.meetPicture!,
                            headers: {
                              'Authorization':
                                  'Bearer ${ref.read(sharedPreferencesProvider).getString(FIREBASE_TOKEN_ID_KEY) ?? ''}'
                            }),
                        fit: BoxFit.cover)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return Transform.translate(
                    offset: Offset(0, _translateAnimation.value),
                    child: ScaleTransition(
                      scale: _scaleAnimation,
                      child: child,
                    ),
                  );
                },
                child: const SizedBox(
                  width: 260.0,
                  height: 225.2942352294922,
                  child: MatchUsersImages(),
                ),
              ),
              SizedBox(
                height: 76.0,
                child: FadeTransition(
                  opacity: _opacityAnimation,
                  child: const MatchTitle(),
                ),
              ),
            ]),
          ),
        ));
  }
}
