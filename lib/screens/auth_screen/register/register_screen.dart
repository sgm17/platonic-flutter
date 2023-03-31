import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/auth_provider/register_provider.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/auth_screen/login/widgets/widgets.dart';
import 'package:platonic/screens/auth_screen/register/widgets/widgets.dart';
import 'package:platonic/screens/auth_screen/widgets/widgets.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends ConsumerState<RegisterScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Future<void> toggleContinueWithEmail() async {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
        final registerState = ref.read(userRegisterProvider);

        // Print UserRegisterData
        print(registerState);

        // Register user in Firebase
        await ref
            .read(appUserProvider.notifier)
            .userRegisterWithEmailAndPassword();

        // Fire onAuthStateChanges(User? user) and redirect to RegisterDetailScreen()
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
                      const SizedBox(
                        height: 34.0,
                        child: AuthenticationTitleText(
                          title: '''Get your free account''',
                        ),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      const Oauth2Container(),
                      const SizedBox(
                        height: 32.0,
                      ),
                      const SizedBox(
                        height: 18.0,
                        child: DividerContainer(),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      const SizedBox(
                        height: 20.0,
                        child: RegisterTitle(
                          title: '''Email''',
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const SizedBox(
                          height: 38.0,
                          child: EmailAuthInput(
                            isLogin: false,
                          )),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const SizedBox(
                        height: 20.0,
                        child: RegisterTitle(
                          title: '''Password''',
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const SizedBox(
                        height: 38.0,
                        child: PasswordAuthInput(
                          isLogin: false,
                        ),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      GestureDetector(
                        onTap: toggleContinueWithEmail,
                        child: const SizedBox(
                          height: 44.0,
                          child: AuthenticationButtonContainer(
                            text: '''Continue With Email''',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      const SizedBox(
                        height: 20.0,
                        child: AlreadyHaveAnAccount(),
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
