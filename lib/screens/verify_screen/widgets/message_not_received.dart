import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MessageNotReceived extends StatelessWidget {
  const MessageNotReceived({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FirebaseAuth.instance.currentUser?.sendEmailVerification(),
      child: Align(
        alignment: Alignment.center,
        child: RichText(
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                height: 1.152999997138977,
                fontSize: 16.0,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 255, 255, 255),

                /* letterSpacing: 0.0, */
              ),
              children: [
                TextSpan(
                  text: AppLocalizations.of(context)!
                      .verifyMessageNotReceivedText,
                ),
                const TextSpan(text: ' '),
                TextSpan(
                  text: AppLocalizations.of(context)!
                      .verifyMessageNotReceivedResendText,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 63, 141, 253),

                    /* letterSpacing: null, */
                  ),
                )
              ],
            )),
      ),
    );
  }
}
