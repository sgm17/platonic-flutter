import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/meet_settings_provider/meet_settings_provider.dart';
import 'package:platonic/providers/register_detail_provider/register_detail_provider.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/auth_screen/widgets/widgets.dart';
import 'package:platonic/screens/register_detail_screen/widgets/widgets.dart';

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

  Future<void> toggleFinishRegister() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      final registerDetailState = ref.read(registerDetailProvider);
      final meetSettingsState = ref.read(meetSettingsProvider);

      // Print registerDetailState
      print(registerDetailState);

      // Print meetSettingsState
      print(meetSettingsState);

      // Store meetSettingsProvider in SharedPreferences
      await ref
          .read(userProvider.notifier)
          .storeMeetSettingsSharedPreferences();

      // Register user in the backend server
      await ref
          .read(userProvider.notifier)
          .userRegisterDetailAndMeetSettingsInBackend();

      // Fire state = AsyncValue.data(appUser) and redirect to StartScreen()
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 34.0,
                        child: AuthenticationTitleText(
                            title: '''Personal Information'''),
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
                      const SizedBox(
                        height: 34.0,
                        child:
                            AuthenticationTitleText(title: '''Meet Settings'''),
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
                        child: const SizedBox(
                          height: 44.0,
                          child: AuthenticationButtonContainer(
                            text: '''Finish the Register''',
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ));
  }
}
