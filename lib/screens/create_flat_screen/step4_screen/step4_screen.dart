import 'package:platonic/providers/error_provider/create_flat/step4_error_provider.dart';
import 'package:platonic/screens/create_flat_screen/step1_screen/widgets/widgets.dart';
import 'package:platonic/screens/create_flat_screen/step2_screen/widgets/widgets.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

/* Frame step4
    Autogenerated by FlutLab FTF Generator
  */
class Step4Screen extends ConsumerStatefulWidget {
  const Step4Screen({super.key});

  @override
  Step4ScreenState createState() => Step4ScreenState();
}

class Step4ScreenState extends ConsumerState<Step4Screen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final step4ErrorState = ref.watch(step4ErrorProvider);

    Future<void> togglePublishFlat() async {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();

        // Get all the flat state
        final flatCreateState = ref.read(flatCreateProvider);

        // Post and create a flat
        await ref
            .read(flatsScrollProvider.notifier)
            .createFlat(flat: flatCreateState);

        //Navigator.pushReplacementNamed(context, '/FlatsScreen');
      }
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (step4ErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  error: step4ErrorState.code,
                ));

        ref.read(step4ErrorProvider.notifier).state = null;
      }
    });

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const NavigateBefore(title: 'Step 4-4'),
                      const SizedBox(
                        height: 22.0,
                      ),
                      const SizedBox(
                        height: 33.0,
                        child: CreateFlatDetailTitle(
                          title: '''Ads Details''',
                        ),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      const SizedBox(
                          height: 48.0, child: CreateFlatDetailTitleInput()),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const SizedBox(
                        height: 156.0,
                        child: CreateFlatDetailDescriptionInput(),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      const SizedBox(
                        height: 23.0,
                        child: CreateFlatDetailImagesTitle(),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const CreateFlatImagesList(),
                      const SizedBox(
                        height: 32.0,
                      ),
                      GestureDetector(
                          onTap: togglePublishFlat,
                          child: Container(
                              alignment: Alignment.center,
                              height: 44.0,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 63, 141, 253),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(63, 0, 0, 0),
                                    offset: Offset(0.0, 4.0),
                                    blurRadius: 4.0,
                                  )
                                ],
                              ),
                              child: const CreateFlatDetailButtonText(
                                  text: '''Publish'''))),
                    ]),
              ),
            ),
          ),
        ));
  }
}
