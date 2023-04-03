import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'package:platonic/screens/register_detail_screen/widgets/widgets.dart';
import 'package:platonic/screens/auth_screen/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

/* Frame register_detail
    Autogenerated by FlutLab FTF Generator
  */
class RegisterDetailScreen extends ConsumerStatefulWidget {
  const RegisterDetailScreen({super.key});

  @override
  RegisterDetailScreenState createState() => RegisterDetailScreenState();
}

class RegisterDetailScreenState extends ConsumerState<RegisterDetailScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final registerErrorState = ref.watch(registerDetailErrorProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (registerErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  error: registerErrorState.code,
                ));

        ref.read(registerDetailErrorProvider.notifier).state = null;
      }
    });

    bool checkRegisterDetail() {
      final newUser = ref.read(appUserProvider);

      if (newUser.university?.id == 0 || newUser.universityToMeet?.id == 0) {
        ref.read(registerDetailErrorProvider.notifier).state =
            const ErrorApp(code: 'registeruniversitydialog');
        return false;
      } else if (newUser.facultyId == 0 || newUser.facultiesToMeet == null) {
        ref.read(registerDetailErrorProvider.notifier).state =
            const ErrorApp(code: 'registerfacultydialog');
        return false;
      } else if (newUser.studyId == 0) {
        ref.read(registerDetailErrorProvider.notifier).state =
            const ErrorApp(code: 'registerstudydialog');
        return false;
      }

      return true;
    }

    Future<void> toggleFinishRegister() async {
      if (formKey.currentState!.validate()) {
        if (checkRegisterDetail() == false) return;

        formKey.currentState!.save();

        // Register user in the backend server
        await ref.read(appUserProvider.notifier).userRegisterDetailInBackend();

        // Fire state = AsyncValue.data(appUser) and redirect to StartScreen()
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
                      SizedBox(
                        height: 34.0,
                        child: AuthenticationTitleText(
                            title: AppLocalizations.of(context)!
                                .registerDetailPersonalTitle),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      const SizedBox(
                        height: 303.0,
                        child: RegisterDetailPersonal(),
                      ),
                      const SizedBox(
                        height: 48.0,
                      ),
                      SizedBox(
                        height: 34.0,
                        child: AuthenticationTitleText(
                            title: AppLocalizations.of(context)!
                                .registerDetailMeetTitle),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      const SizedBox(
                        height: 138.0,
                        child: RegisterDetailMeet(),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      const SizedBox(
                        height: 56.0,
                        child: MeetDescription(),
                      ),
                      const SizedBox(
                        height: 37.0,
                      ),
                      GestureDetector(
                        onTap: toggleFinishRegister,
                        child: SizedBox(
                          height: 44.0,
                          child: AuthenticationButtonContainer(
                            text: AppLocalizations.of(context)!
                                .registerDetailFinishRegisterButton,
                          ),
                        ),
                      ),
                    ])),
          ),
        )));
  }

  @override
  void dispose() {
    formKey.currentState?.dispose();
    super.dispose();
  }
}
