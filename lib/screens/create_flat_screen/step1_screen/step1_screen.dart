import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/create_flat/step1_error_provider.dart';
import 'package:platonic/providers/flat_provider/flat_create_provider.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'widgets/widgets.dart';

/* Frame step1
    Autogenerated by FlutLab FTF Generator
  */
class Step1Screen extends ConsumerWidget {
  const Step1Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final step1ErrorState = ref.read(step1ErrorProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (step1ErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  error: step1ErrorState.code,
                ));

        ref.read(step1ErrorProvider.notifier).state = null;
      }
    });

    bool checkStep1Create() {
      final flatCreateState = ref.read(flatCreateProvider);

      if (flatCreateState.geometry != emptyGeometry &&
          flatCreateState.properties != PropertyModel.emptyProperties) {
        return true;
      }

      return false;
    }

    void toggleCreateFlatStep2() {
      final checkStep1 = checkStep1Create();

      if (checkStep1 == true) {
        Navigator.pushNamed(context, '/Step2Screen');
      } else {
        ref.read(step1ErrorProvider.notifier).state =
            const ErrorApp(code: 'step1propertiesgeometry');
      }
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              const CreateFlatMap(),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(102, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(63, 255, 255, 255),
                          offset: Offset(0.0, 4.0),
                          blurRadius: 8.0,
                        )
                      ],
                    ),
                    child: const SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: NavigateBefore(
                          color: Colors.black,
                          title: '''Step 1-4''',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                      child: Column(
                        children: [
                          CreateFlatDetailSearch(),
                          CreateFlatAddressSuggestion()
                        ],
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: toggleCreateFlatStep2,
                    child: const Padding(
                      padding: EdgeInsets.all(32.0),
                      child: SizedBox(
                        height: 44.0,
                        child: CreateFlatDetailButton(
                          text: '''Confirm Address''',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ]));
  }
}
