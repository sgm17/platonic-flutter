import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/dialog_provider/is_meet_settings_dialog_provider.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/register_detail_screen/widgets/widgets.dart';

/* Frame personal
    Autogenerated by FlutLab FTF Generator
  */
class RegisterDetailPersonal extends ConsumerWidget {
  const RegisterDetailPersonal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(appUserProvider);

    void toggleUniversity() {
      ref.read(isMeetSettingsDialogProvider.notifier).state = false;

      Navigator.pushNamed(context, '/UniversityDialogScreen');
    }

    void toggleFaculty() {
      ref.read(isMeetSettingsDialogProvider.notifier).state = false;

      Navigator.pushNamed(context, '/FacultyDialogScreen');
    }

    void toggleStudy() {
      ref.read(isMeetSettingsDialogProvider.notifier).state = false;

      Navigator.pushNamed(context, '/StudyDialogScreen');
    }

    return SizedBox(
      height: 303.0,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 38.0,
          child: NameInput(),
        ),
        const SizedBox(
          height: 15.0,
        ),
        const SizedBox(
          height: 38.0,
          child: AgeInput(),
        ),
        const SizedBox(
          height: 15.0,
        ),
        const SizedBox(
          height: 38.0,
          child: PersonalSwitch(),
        ),
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          height: 38.0,
          child: PersonalSelect(
            placeholder: userState.universityId != 0
                ? userState.university!.name
                : AppLocalizations.of(context)!
                    .registerDetailPersonalUniversityPlaceholderText,
            title: '''University''',
            toggleDialog: toggleUniversity,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          height: 38.0,
          child: PersonalSelect(
            placeholder: userState.facultyId != 0
                ? userState.faculty!.facultyName!
                : AppLocalizations.of(context)!
                    .registerDetailPersonalFacultyPlaceholderText,
            title: '''Faculty''',
            toggleDialog: toggleFaculty,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          height: 38.0,
          child: PersonalSelect(
            placeholder: userState.studyId != 0
                ? userState.study!.studyName
                : AppLocalizations.of(context)!
                    .registerDetailPersonalStudiesPlaceholderText,
            title: '''Studies''',
            toggleDialog: toggleStudy,
          ),
        )
      ]),
    );
  }
}
