import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/auth_screen/widgets/widgets.dart';
import 'package:platonic/screens/verify_screen/widgets/email_verification_instructions.dart';
import 'package:platonic/screens/verify_screen/widgets/message_not_received.dart';

class VerifyScreen extends ConsumerWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firebaseUserState = ref.watch(firebaseUserProvider);

    Future<void> toggleVerifyAccount() async {
      await ref.read(firebaseUserProvider.notifier).firebaseUserRefresh();
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 26, 29),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 34.0,
            child: AuthenticationTitleText(title: '''Email Verification'''),
          ),
          const SizedBox(
            height: 22.0,
          ),
          SizedBox(
            height: 34.0,
            child:
                EmailVerificationInstructions(email: firebaseUserState!.email!),
          ),
          const SizedBox(
            height: 22.0,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 176.0,
              child: Image.asset(
                'assets/images/verify_illustration.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 22.0,
          ),
          const MessageNotReceived(),
          const SizedBox(
            height: 22.0,
          ),
          GestureDetector(
            onTap: toggleVerifyAccount,
            child: const SizedBox(
                height: 44.0,
                child: AuthenticationButtonContainer(
                  text: '''Verify Account''',
                )),
          ),
        ]),
      )),
    );
  }
}
