import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:platonic/providers/error_provider/flat_error_provider.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/screens/create_flat_screen/step2_screen/widgets/widgets.dart';
import 'package:platonic/screens/error_dialog/delete_dialog/delete_dialog.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'widgets/widgets.dart';

class DetailScreen extends ConsumerWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatState = ref.watch(flatProvider);
    final flatErrorState = ref.watch(flatErrorProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (flatErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  error: flatErrorState.code,
                ));

        ref.read(flatErrorProvider.notifier).state = null;
      }
    });

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: SafeArea(
          child: flatState.when(
            data: (flat) {
              Future<void> toggleDeleteFlat() async {
                showDialog(
                    context: context,
                    builder: (context) => DeleteDialog(
                          error: '''flatdeletedialog''',
                          toggleDelete: () async {
                            await ref
                                .read(flatProvider.notifier)
                                .deleteFlat(flatId: flat.id);

                            Navigator.pop(context);
                          },
                        ));
              }

              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NavigateBeforeDetail(
                              bookmark: flat.bookMark,
                              owner: flat.owner,
                              flat: flat,
                              toggleDeleteFlat: toggleDeleteFlat,
                            ),
                            const SizedBox(
                              height: 22.0,
                            ),
                            SizedBox(
                              height: 201.0,
                              child: DetailImagesCarousel(
                                image: flat.images,
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            SizedBox(
                              height: 25.0,
                              child: DetailTitle(
                                title: flat.title,
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            SizedBox(
                              height: 42.0,
                              child: DetailComodities(
                                bathroom: flat.bathroom,
                                bedroom: flat.bedroom,
                                built: flat.built,
                                floor: flat.floor,
                              ),
                            ),
                            const SizedBox(
                              height: 22.0,
                            ),
                            SizedBox(
                                height: 40.0,
                                child: DetailTenantItem(
                                  tenant: flat.owner,
                                )),
                            const SizedBox(
                              height: 16.0,
                            ),
                            DetailTenants(
                              owner: flat.owner,
                              tenants: flat.tenants,
                              flatId: flat.id,
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            const DetailTenantsDisclaimerText(),
                            const SizedBox(
                              height: 22.0,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 26.0,
                                  child: CreateFlatDetailSubtitle(
                                    subtitle: '''Features''',
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                  child: DetailSeeAllTitle(),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 22.0,
                            ),
                            SizedBox(
                              height: 67.0,
                              child: DetailFeatures(
                                features: flat.features,
                              ),
                            ),
                            const SizedBox(
                              height: 22.0,
                            ),
                            const SizedBox(
                              height: 23.0,
                              child: CreateFlatDetailSubtitle(
                                subtitle: '''Where you’ll be''',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            SizedBox(
                                height: 17.0,
                                child: DetailLocation(
                                    city: flat.properties.city,
                                    name: flat.properties.name,
                                    state: flat.properties.state)),
                            const SizedBox(
                              height: 14.0,
                            ),
                            SizedBox(
                              height: 140.0,
                              child: DetailLocationMap(
                                geometry: flat.geometry,
                              ),
                            ),
                            const SizedBox(
                              height: 22.0,
                            ),
                            const SizedBox(
                              height: 23.0,
                              child: CreateFlatDetailSubtitle(
                                subtitle: '''Property Details''',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CreateFlatDetailDescription(
                              description: flat.description,
                            ),
                            const SizedBox(
                              height: 22.0,
                            ),
                            const SizedBox(
                              height: 23.0,
                              child: CreateFlatDetailSubtitle(
                                subtitle: '''Montly Cost''',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            SizedBox(
                              height: 21.0,
                              child: DetailDiagramLine(
                                electricityCost: flat.electricityPriceInCents,
                                principalCost: flat.rentPricePerMonthInCents,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                              height: 21.0,
                              child: DetailPrincipalInterest(
                                principalCost: flat.rentPricePerMonthInCents,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                              height: 18.0,
                              child: DetailCostElectricity(
                                electricityCost: flat.electricityPriceInCents,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                              height: 20.0,
                              child: DetailFirstMonth(
                                  rentAdvance: flat.advancePriceInCents),
                            ),
                            const SizedBox(
                              height: 22.0,
                            ),
                            const SizedBox(
                              height: 26.0,
                              child: CreateFlatDetailSubtitle(
                                subtitle: '''Transportation''',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: flat.transports.map((transport) {
                                  final index =
                                      flat.transports.indexOf(transport);
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            index == flat.transports.length - 1
                                                ? 0.0
                                                : 16.0),
                                    child: DetailTransportation(
                                        title:
                                            'By ${transport.name[0].toUpperCase()}${transport.name.substring(1)} to ${transport.university.simpleName.toUpperCase()} ${transport.minutes} minutes',
                                        child:
                                            DetailTransportationIconContainer(
                                                child: transport.icon)),
                                  );
                                }).toList()),
                          ]),
                    ),
                    SizedBox(
                      height: 90.0,
                      child: DetailPrice(
                        electricityCost: flat.electricityPriceInCents,
                        principalCost: flat.rentPricePerMonthInCents,
                        owner: flat.owner,
                      ),
                    ),
                  ],
                ),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            error: (error, stackTrace) {
              return Text(error.toString());
            },
          ),
        ));
  }
}
