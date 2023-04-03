import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'package:platonic/screens/login_screen/widgets/widgets.dart';
import 'package:platonic/screens/register_screen/widgets/widgets.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authErrorState = ref.watch(authErrorProvider);

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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (authErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  error: authErrorState.code,
                ));

        ref.read(authErrorProvider.notifier).state = null;
      }
    });

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
                            title: AppLocalizations.of(context)!.loginTitle),
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
                        child: SizedBox(
                          height: 44.0,
                          child: AuthenticationButtonContainer(
                            text:
                                AppLocalizations.of(context)!.loginLoginButton,
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
                      const Oauth2Container(),
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
