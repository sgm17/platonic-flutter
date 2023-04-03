import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/university_repository/src/models/faculties_list_model.dart';
import 'package:platonic/domains/university_repository/university_repository.dart';
import 'package:platonic/providers/dialog_provider/providers.dart';
import 'package:platonic/providers/university_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/dialog_screen/widgets/widgets.dart';
import 'package:platonic/screens/settings_screen/widgets/widgets.dart';

/* Frame studies_dialog
    Autogenerated by FlutLab FTF Generator
  */
class FacultyDialogScreen extends ConsumerWidget {
  const FacultyDialogScreen({super.key});

  Faculty convertToFaculty(FacultiesList faculty) {
    return Faculty(id: faculty.id, facultyName: faculty.facultyName);
  }

  List<FacultiesList> filterFaculties(
      {required List<FacultiesList> faculties,
      required String searchBarState}) {
    return searchBarState.trim().isEmpty
        ? faculties
        : faculties
            .where((faculty) => faculty.facultyName
                .toLowerCase()
                .contains(searchBarState.toLowerCase()))
            .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMeetSettings = ref.watch(isMeetSettingsDialogProvider);
    final searchBarState = ref.watch(searchBarProvider);
    final userState = ref.watch(appUserProvider);
    final universitiesListState = ref.watch(universitiesListProvider);

    bool getSelected(FacultiesList faculty) {
      if (isMeetSettings) {
        return userState.facultiesToMeet?.any((e) => e.id == faculty.id) ??
            false;
      } else {
        return userState.facultyId != 0 && faculty.id == userState.facultyId;
      }
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 26, 29),
      body: SafeArea(
        child: universitiesListState.when(
          data: (data) {
            List<FacultiesList> facultiesList = [];

            if (isMeetSettings) {
              if (userState.universityToMeet != null) {
                facultiesList = data
                    .firstWhere((e) =>
                        e.university.id == userState.universityToMeet?.id)
                    .faculties;
              }
            } else {
              if (userState.universityId != 0) {
                facultiesList = data
                    .firstWhere(
                        (e) => e.university.id == userState.universityId)
                    .faculties;
              }
            }

            final filteredFaculties = filterFaculties(
                faculties: facultiesList, searchBarState: searchBarState);

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 31.0,
                      child: DialogTitle(
                          title: isMeetSettings
                              ? AppLocalizations.of(context)!
                                  .facultyDialogMeetTitle
                              : AppLocalizations.of(context)!
                                  .facultyDialogPersonalTitle),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 20.0,
                      child: SearchBar(
                        placeholder: AppLocalizations.of(context)!
                            .facultyDialogSearchPlaceholder,
                      ),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Expanded(
                      child: ListView.separated(
                          itemCount: filteredFaculties.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                final faculty = filteredFaculties[index];

                                if (isMeetSettings) {
                                  final currentFacultiesToMeet =
                                      userState.facultiesToMeet;

                                  final newFacultiesToMeet =
                                      currentFacultiesToMeet != null &&
                                              currentFacultiesToMeet
                                                  .map((e) => e.id)
                                                  .toList()
                                                  .contains(faculty.id)
                                          ? currentFacultiesToMeet
                                              .where((e) => e.id != faculty.id)
                                              .toList()
                                          : currentFacultiesToMeet != null
                                              ? [
                                                  convertToFaculty(faculty),
                                                  ...currentFacultiesToMeet
                                                ]
                                              : [convertToFaculty(faculty)];

                                  ref
                                      .read(appUserProvider.notifier)
                                      .setFacultiesToMeet(
                                        newFacultiesToMeet,
                                      );
                                } else {
                                  ref
                                      .read(appUserProvider.notifier)
                                      .setFaculty(convertToFaculty(faculty));
                                }
                              },
                              child: SelectFacultyContainer(
                                faculty: filteredFaculties[index],
                                isSelected:
                                    getSelected(filteredFaculties[index]),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 8.0,
                            );
                          }),
                    ),
                  ]),
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
      ),
    );
  }
}
