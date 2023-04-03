import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/screens/error_dialog/delete_dialog/delete_dialog.dart';
import 'package:platonic/screens/error_dialog/loading_dialog/loading_dialog.dart';
import 'package:platonic/providers/error_provider/create_flat/step4_error_provider.dart';
import 'package:platonic/providers/http_provider/http_viewmodel_provider.dart';
import 'package:platonic/screens/create_flat_screen/step1_screen/widgets/widgets.dart';
import 'package:platonic/screens/create_flat_screen/step2_screen/widgets/widgets.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'widgets/widgets.dart';
import 'dart:io';

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
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final step4ErrorState = ref.watch(step4ErrorProvider);

    bool checkStep4Create() {
      final flatCreateState = ref.read(flatCreateProvider);

      if (flatCreateState.images.isEmpty) {
        ref.read(step4ErrorProvider.notifier).state =
            const ErrorApp(code: 'step4emptyimages');
        return false;
      }

      return true;
    }

    Future<void> toggleFlatImage() async {
      final pickedFiles = await ImagePicker().pickMultiImage();

      if (pickedFiles.isNotEmpty) {
        setState(() {
          isLoading = true;
        });

        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) => const LoadingDialog(
            loading: 'imagesloadingdialog',
          ),
        );

        List<String> images = [];

        try {
          images = await ref
              .read(httpViewmodelProvider)
              .postCreateMultipleImages(
                  files: pickedFiles.map((e) => File(e.path)).toList());
        } on ErrorApp catch (e) {
          ref.read(step4ErrorProvider.notifier).state = e;
        }

        Navigator.of(context).pop();

        setState(() {
          isLoading = false;
        });

        if (images.isEmpty) return;

        ref.read(flatCreateProvider.notifier).setImages(images: images);
      }
    }

    Future<void> togglePublishFlat() async {
      if (formKey.currentState!.validate()) {
        if (checkStep4Create() == false) return;

        formKey.currentState!.save();

        // Get all the flat state
        final flatCreateState = ref.read(flatCreateProvider);

        // The flat is new
        if (flatCreateState.id == 0) {
          // Post and create a flat
          await ref
              .read(flatsScrollProvider.notifier)
              .createFlat(flat: flatCreateState);
        } else {
          await ref
              .read(flatsScrollProvider.notifier)
              .updateFlat(flat: flatCreateState);
        }

        ref.read(flatCreateProvider.notifier).setEmptyState();

        // Push to the list of flats screen
        Navigator.pushNamedAndRemoveUntil(
            context, '/HomeScreen', (route) => false);

        Navigator.pushNamed(context, '/FlatsScreen');
      }
    }

    Future<void> toggleDeleteDialog(
      void Function() toggleDeleteImage,
    ) async {
      return showDialog(
          context: context,
          builder: (context) => DeleteDialog(
              error: '''imagedeletedialog''',
              toggleDelete: () {
                toggleDeleteImage();
                Navigator.of(context).pop();
              }));
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
                      NavigateBefore(
                          title: AppLocalizations.of(context)!
                              .step4NavigatorTitle),
                      const SizedBox(
                        height: 22.0,
                      ),
                      SizedBox(
                        height: 33.0,
                        child: CreateFlatDetailTitle(
                          title: AppLocalizations.of(context)!.step4Title,
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
                      CreateFlatImagesList(
                        toggleFlatImage: toggleFlatImage,
                        toggleDeleteDialog: toggleDeleteDialog,
                      ),
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
                              child: CreateFlatDetailButtonText(
                                  text: ref.read(flatCreateProvider).id == 0
                                      ? '''Publish Flat'''
                                      : '''Update Flat'''))),
                    ]),
              ),
            ),
          ),
        ));
  }
}
