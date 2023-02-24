import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/auth_provider/register_provider.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/auth_screen/login/widgets/widgets.dart';
import 'package:platonic/screens/auth_screen/register/widgets/widgets.dart';
import 'package:platonic/screens/auth_screen/widgets/widgets.dart';

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    Future<void> toggleContinueWithEmail() async {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
        final registerState = ref.read(userRegisterProvider);

        // Print UserRegisterData
        print(registerState);

        // Register user in Firebase
        await ref
            .read(userProvider.notifier)
            .userRegisterWithEmailAndPassword();

        // Fire onAuthStateChanges(User? user) and redirect to RegisterDetailScreen()
      }
    }

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: SafeArea(
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
                    const SizedBox(
                      height: 343.0,
                      child: RegisterForm(),
                    ),
                    const SizedBox(
                      height: 16.0,
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
        ));
  }
}
