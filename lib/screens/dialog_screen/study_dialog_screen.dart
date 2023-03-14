import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/university_repository/src/models/faculties_list_model.dart';
import 'package:platonic/domains/university_repository/university_repository.dart';
import 'package:platonic/providers/dialog_provider/search_bar_provider.dart';
import 'package:platonic/providers/university_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/settings_screen/widgets/widgets.dart';
import 'widgets/university_dialog/widgets.dart';

/* Frame university_dialog
    Autogenerated by FlutLab FTF Generator
  */
class StudyDialogScreen extends ConsumerWidget {
  const StudyDialogScreen({
    super.key,
  });

  Faculty convertToFaculty(FacultiesList faculty) {
    return Faculty(id: faculty.id, facultyName: faculty.facultyName);
  }

  List<Study> filterStudies(
      {required List<Study> studies, required String searchBarState}) {
    return searchBarState.trim().isEmpty
        ? studies
        : studies
            .where((study) => study.studyName
                .toLowerCase()
                .contains(searchBarState.toLowerCase()))
            .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchBarState = ref.watch(searchBarProvider);
    final universitiesListState = ref.watch(universitiesListProvider);

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: SafeArea(
          child: universitiesListState.when(
            data: (data) {
              List<Study> studies = [];
              final universityRegisterDetailState =
                  ref.read(userRegisterDetailProvider);

              if (universityRegisterDetailState.universityId != 0 &&
                  universityRegisterDetailState.facultyId != 0) {
                studies = data
                    .firstWhere((universitiesList) =>
                        universitiesList.university.id ==
                        ref.read(userRegisterDetailProvider).universityId)
                    .faculties
                    .firstWhere((facultiesList) =>
                        facultiesList.id ==
                        ref.read(userRegisterDetailProvider).id)
                    .studies;
              }

              final filteredStudies = filterStudies(
                  studies: studies, searchBarState: searchBarState);

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 31.0,
                        child: DialogTitle(title: '''Set your study'''),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const SizedBox(
                        height: 20.0,
                        child: SearchBar(
                          placeholder: '''Search by study''',
                        ),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      Expanded(
                        child: ListView.separated(
                          itemCount: filteredStudies.length,
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 8.0,
                            );
                          },
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                ref
                                        .read(userRegisterDetailProvider.notifier)
                                        .state =
                                    ref
                                        .read(userRegisterDetailProvider)
                                        .copyWith(
                                            study: filteredStudies[index]);
                              },
                              child: OptionSelected(
                                isBlue: true,
                                isSelected: ref
                                        .read(userRegisterDetailProvider)
                                        .studyId ==
                                    filteredStudies[index].id,
                                name: filteredStudies[index].studyName,
                              ),
                            );
                          },
                        ),
                      )
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
        ));
  }
}
