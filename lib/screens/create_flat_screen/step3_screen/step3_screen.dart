import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/screens/create_flat_screen/step1_screen/widgets/widgets.dart';
import 'package:platonic/screens/create_flat_screen/step2_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

/* Frame step3
    Autogenerated by FlutLab FTF Generator
  */

class Step3Screen extends ConsumerWidget {
  const Step3Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final flatCreateState = ref.watch(flatCreateProvider);

    void toggleAmenitiesTransportationForm() {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();

        final flatState = ref.read(flatCreateProvider);

        // Create another providers to update correctly
        final builtState = ref.read(builtProvider);
        final floorState = ref.read(floorProvider);

        // Update flatState
        ref.read(flatCreateProvider.notifier).state =
            flatState.copyWith(built: builtState, floor: floorState);

        Navigator.pushNamed(context, '/Step4Screen');
      }
    }

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
                      const NavigateBefore(
                        color: Colors.white,
                        title: 'Step 3-4',
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      const SizedBox(
                        height: 33.0,
                        child: CreateFlatDetailTitle(
                            title: '''Property Amenities '''),
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
                              child: SizedBox(
                                height: 70.0,
                                child: BathroomNumberSelector(),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: SizedBox(
                                child: AmenityFloorInput(),
                              ),
                            )
                          ]),
                      const SizedBox(
                        height: 22.0,
                      ),
                      const SizedBox(
                        height: 26.0,
                        child: CreateFlatDetailSubtitle(
                          subtitle: '''Features''',
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
                      const SizedBox(
                          height: 26.0,
                          child: CreateFlatDetailSubtitle(
                            subtitle: '''Transportation''',
                          )),
                      const SizedBox(
                        height: 6.0,
                      ),
                      SizedBox(
                        height: 18.0,
                        child: AmenityTransportationSubtitle(
                            university:
                                "${flatCreateState.owner.university!.name} (${flatCreateState.owner.university!.simpleName.toUpperCase()})"),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      AmenityTransportation(
                        universityId: flatCreateState.owner.universityId,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: flatCreateState.tenants.map((tenant) {
                          final index = flatCreateState.tenants.indexOf(tenant);
                          return Column(
                            children: [
                              SizedBox(
                                height: 18.0,
                                child: AmenityTransportationSubtitle(
                                    university:
                                        "${tenant.university} (${tenant.university!.simpleName.toUpperCase()})"),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              AmenityTransportation(
                                universityId: tenant.universityId,
                              ),
                              if (index == flatCreateState.tenants.length - 1)
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
                              child: const CreateFlatDetailButtonText(
                                  text: '''Next'''),
                            )),
                      ),
                    ]),
              ),
            ),
          ),
        ));
  }
}
