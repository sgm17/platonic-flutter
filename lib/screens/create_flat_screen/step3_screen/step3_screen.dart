import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/create_flat/step3_error_provider.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/create_flat_screen/step1_screen/widgets/widgets.dart';
import 'package:platonic/screens/create_flat_screen/step2_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'widgets/widgets.dart';

/* Frame step3
    Autogenerated by FlutLab FTF Generator
  */

class Step3Screen extends ConsumerStatefulWidget {
  const Step3Screen({super.key});

  @override
  Step3ScreenState createState() => Step3ScreenState();
}

class Step3ScreenState extends ConsumerState<Step3Screen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final userState = ref.read(appUserProvider);
    final flatCreateState = ref.watch(flatCreateProvider);
    final step3ErrorState = ref.watch(step3ErrorProvider);

    bool checkStep3Create() {
      final flatCreateState = ref.read(flatCreateProvider);

      if (flatCreateState.features.length < 4) {
        ref.read(step3ErrorProvider.notifier).state =
            const ErrorApp(code: 'step3featuresshort');
        return false;
      }

      return true;
    }

    void toggleAmenitiesTransportationForm() {
      if (formKey.currentState!.validate()) {
        if (checkStep3Create() == false) return;
        formKey.currentState!.save();

        Navigator.pushNamed(context, '/Step4Screen');
      }
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (step3ErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  error: step3ErrorState.code,
                ));

        ref.read(step3ErrorProvider.notifier).state = null;
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
                        color: Colors.white,
                        title:
                            AppLocalizations.of(context)!.step3NavigatorTitle,
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      SizedBox(
                        height: 33.0,
                        child: CreateFlatDetailTitle(
                            title: AppLocalizations.of(context)!.step3Title),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                                flex: 3,
                                child: SizedBox(
                                  height: 70.0,
                                  child: BedroomNumberSelector(),
                                )),
                            Flexible(
                              flex: 1,
                              child: SizedBox(
                                height: 70.0,
                                child: AmenityM2Input(),
                              ),
                            )
                          ]),
                      const SizedBox(
                        height: 22.0,
                      ),
                      const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 3,
                              child: BathroomNumberSelector(),
                            ),
                            Flexible(
                              flex: 1,
                              child: AmenityFloorInput(),
                            )
                          ]),
                      const SizedBox(
                        height: 22.0,
                      ),
                      SizedBox(
                        height: 26.0,
                        child: CreateFlatDetailSubtitle(
                          subtitle: AppLocalizations.of(context)!
                              .step3FeaturesSubtitleTitle,
                        ),
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      SizedBox(
                        height: 42.0,
                        child: FeaturesSelect(
                          features: flatCreateState.features,
                        ),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      SizedBox(
                          height: 26.0,
                          child: CreateFlatDetailSubtitle(
                            subtitle: AppLocalizations.of(context)!
                                .step3TransportationSubtitleTitle,
                          )),
                      const SizedBox(
                        height: 6.0,
                      ),
                      SizedBox(
                        height: 18.0,
                        child: AmenityTransportationSubtitle(
                            university: flatCreateState.id == 0
                                ? "${userState.university!.name} (${userState.university!.simpleName.toUpperCase()})"
                                : "${flatCreateState.owner.university!.name} (${flatCreateState.owner.university!.simpleName.toUpperCase()})"),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      AmenityTransportation(
                        user: flatCreateState.id == 0
                            ? userState
                            : flatCreateState.owner,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                            flatCreateState.tenants.asMap().entries.map((e) {
                          final index = e.key;
                          final tenant = e.value;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10.0,
                              ),
                              SizedBox(
                                height: 18.0,
                                child: AmenityTransportationSubtitle(
                                    university:
                                        "${tenant.university!.name} (${tenant.university!.simpleName.toUpperCase()})"),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              AmenityTransportation(
                                user: tenant,
                              ),
                              if (index != flatCreateState.tenants.length - 1)
                                const SizedBox(
                                  height: 10,
                                )
                            ],
                          );
                        }).toList(),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      const SizedBox(
                        height: 74.0,
                        child: AmenityDisclaimerText(),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      GestureDetector(
                        onTap: toggleAmenitiesTransportationForm,
                        child: SizedBox(
                            height: 44.0,
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
                                  text: AppLocalizations.of(context)!
                                      .step3NextButton),
                            )),
                      ),
                    ]),
              ),
            ),
          ),
        ));
  }

  @override
  void dispose() {
    formKey.currentState?.dispose();
    super.dispose();
  }
}
