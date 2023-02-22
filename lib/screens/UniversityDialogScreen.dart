import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/meet_settings_repository/src/models/meet_settings_model.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';
import 'package:platonic/domain/user_repository/src/models/models.dart';
import 'package:platonic/providers/dialog_provider/search_bar_provider.dart';
import 'package:platonic/providers/meet_settings_provider/meet_settings_provider.dart';
import 'package:platonic/providers/register_detail_provider/register_detail_provider.dart';
import 'package:platonic/providers/university_provider/src/providers/universities_provider.dart';
import 'package:platonic/widgets/settings/dialog/search_bar/SearchBar.dart';
import 'package:platonic/widgets/settings/dialog/DialogTitle.dart';
import '../widgets/dialogs/university_dialog/option_selected/OptionSelected.dart';

/* Frame university_dialog
    Autogenerated by FlutLab FTF Generator
  */
class UniversityDialogScreen extends ConsumerWidget {
  const UniversityDialogScreen({super.key, required this.isMeetSettings});

  final bool isMeetSettings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<UniversitiesList> universitiesList = ref.watch(universitiesProvider);

    final searchBarState = ref.watch(searchBarProvider);

    universitiesList = searchBarState.trim().isEmpty
        ? universitiesList
        : universitiesList
            .where((uni) => uni.university.name
                .toLowerCase()
                .contains(searchBarState.toLowerCase()))
            .toList();

    final universityState = ref
        .watch(isMeetSettings ? meetSettingsProvider : registerDetailProvider);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 26, 29),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 31.0,
              child: DialogTitle(
                  title: isMeetSettings
                      ? '''Set university to Meet'''
                      : '''Set your university'''),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
              height: 20.0,
              child: SearchBar(
                placeholder: '''Search by university''',
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: universitiesList.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8.0,
                  );
                },
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (isMeetSettings && universityState is MeetSettings) {
                        ref.read(meetSettingsProvider.notifier).state =
                            universityState.copyWith(
                                universityToMeet:
                                    universitiesList[index].university);
                      } else if (!isMeetSettings &&
                          universityState is RegisterDetail) {
                        ref.read(registerDetailProvider.notifier).state =
                            universityState.copyWith(
                                university: universitiesList[index].university);
                      }
                    },
                    child: OptionSelected(
                      isBlue: true,
                      isSelected: isMeetSettings &&
                              universityState is MeetSettings
                          ? universityState.universityToMeet ==
                              universitiesList[index].university
                          : !isMeetSettings && universityState is RegisterDetail
                              ? universityState.university ==
                                  universitiesList[index].university
                              : false,
                      name: universitiesList[index].university.name,
                    ),
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
