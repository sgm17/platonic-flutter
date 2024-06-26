import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/domains/story_repository/src/models/story_model.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
import 'package:platonic/providers/create_provider/circular_button_provider.dart';
import 'package:platonic/providers/create_provider/providers.dart';
import 'package:platonic/providers/error_provider/create_error_provider.dart';
import 'package:platonic/providers/story_provider/providers.dart';
import 'package:platonic/screens/create_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

/* Frame create
    Autogenerated by FlutLab FTF Generator
*/
class CreateScreen extends ConsumerStatefulWidget {
  const CreateScreen({super.key});

  @override
  CreateScreenState createState() => CreateScreenState();
}

class CreateScreenState extends ConsumerState<CreateScreen> {
  final createController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final gradientIndexState = ref.watch(gradientIndexProvider);
    final circularButtonState = ref.watch(circularButtonProvider);
    final createErrorState = ref.watch(createErrorProvider);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    void toggleCreateCircular() {
      if (createController.text.isNotEmpty) {
        ref.read(circularButtonProvider.notifier).state = true;
      }
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (createErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  errorApp: createErrorState,
                ));

        ref.read(createErrorProvider.notifier).state = null;
      }
    });

    Future<void> toggleMyFacultyStory() async {
      final text = createController.text;

      final story = Story(
          id: 0,
          user: AppUser.emptyUser,
          faculty: const Faculty(id: 0, facultyName: ''),
          body: text,
          creationDate: DateTime.now().toUtc(),
          favourite: false,
          backgroundGradientIndex: gradients[gradientIndexState],
          visualizations: []);

      final result =
          await ref.read(storiesScrollProvider.notifier).createStory(story);

      createController.clear();

      ref.read(circularButtonProvider.notifier).state = false;

      if (result == true) {
        Navigator.popUntil(
            context, (route) => route.settings.name == '/AppScreen');
      }
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
              gradient: gradients[gradientIndexState],
              borderRadius: !circularButtonState
                  ? BorderRadius.circular(8.0)
                  : BorderRadius.zero),
          width: width,
          height: height,
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 35.0,
                  height: 35.0,
                  child: CreateCloseButton(),
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: CreateInput(
                controller: createController,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            if (!circularButtonState)
              GestureDetector(
                  onTap: toggleCreateCircular,
                  child: const CreateCircularButton()),
            const SizedBox(
              height: 32.0,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 151.0,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: !circularButtonState
                    ? SizedBox(
                        height: 31.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: width / 4,
                              child: Container(),
                            ),
                            SizedBox(
                              width: width / 4,
                              child: const StoryTitle(),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              width: width / 4,
                              child: GestureDetector(
                                  onTap: () {
                                    ref
                                        .read(gradientIndexProvider.notifier)
                                        .state = (gradientIndexState +
                                            1) %
                                        gradients.length;
                                  },
                                  child: BackgroundSelector(
                                    gradient: gradients[gradientIndexState],
                                  )),
                            ),
                          ],
                        ))
                    : Row(
                        children: [
                          Flexible(
                            child: GestureDetector(
                              onTap: toggleMyFacultyStory,
                              child: Container(
                                height: 42.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 27, 26, 29),
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 20.0,
                                          width: 20.0,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1.0),
                                              shape: BoxShape.circle),
                                          child: const Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 10.0,
                                          )),
                                      const SizedBox(
                                        width: 6.0,
                                      ),
                                      Text(
                                          AppLocalizations.of(context)!
                                              .createFacultyText,
                                          overflow: TextOverflow.visible,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                            fontFamily: 'Arial',
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          )
                                          /* letterSpacing: 1.8, */
                                          ),
                                    ]),
                              ),
                            ),
                          ),
                          const Flexible(
                              child: SizedBox(
                            height: 42.0,
                          )),
                        ],
                      ),
              ),
            ),
          ]),
        )));
  }

  @override
  void dispose() {
    createController.dispose();
    super.dispose();
  }
}
