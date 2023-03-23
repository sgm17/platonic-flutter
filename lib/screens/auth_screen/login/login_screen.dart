import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/auth_screen/login/widgets/widgets.dart';
import 'package:platonic/screens/auth_screen/widgets/widgets.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    void toggleForgotPassword() =>
        Navigator.pushNamed(context, '/ForgotPasswordScreen');

    Future<void> toggleLogin() async {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();

        // Firebase login user
        await ref
            .read(appUserProvider.notifier)
            .userSignInWithEmailAndPassword();

        // Fire onAuthStateChanges(User? user) and redirect to HomeScreen()
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
                            title: '''Log in to Platonic'''),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      const SizedBox(
                        height: 142.0,
                        child: LoginForm(),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      GestureDetector(
                        onTap: toggleForgotPassword,
                        child: const SizedBox(
                          height: 20.0,
                          child: ForgotPasswordText(),
                        ),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      GestureDetector(
                        onTap: toggleLogin,
                        child: const SizedBox(
                          height: 44.0,
                          child: AuthenticationButtonContainer(
                            text: '''Login''',
                          ),
                        ),
                      ),
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
                        height: 104.0,
                        child: Oauth2Container(),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      const SizedBox(height: 20.0, child: DontHaveAnAccount())
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
