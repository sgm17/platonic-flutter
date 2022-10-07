import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  late GlobalKey<FormState> _formKey;
  late String _email, _password;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Platonic',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.mainColor,
              fontFamily: 'Retrokia',
              fontSize: 48,
              fontWeight: FontWeight.w500),
        ),
        const Text(
          'platonic allows you to create posts to search for your crush and find new people from your university',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 28, color: AppColors.grey, fontWeight: FontWeight.w400),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: AppColors.white),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 1, color: AppColors.strongWhite)),
                child: TextFormField(
                  textAlign: TextAlign.left,
                  textInputAction: TextInputAction.next,
                  maxLength: 100,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                  onSaved: (String? email) => _email = email!,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.only(bottom: 10, left: 8, right: 8),
                    counter: SizedBox.shrink(),
                    border: InputBorder.none,
                    hintText: 'email',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 1, color: AppColors.strongWhite)),
                child: TextFormField(
                  obscureText: true,
                  textAlign: TextAlign.left,
                  textInputAction: TextInputAction.next,
                  maxLength: 100,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                  onSaved: (String? password) => _password = password!,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.only(bottom: 10, left: 8, right: 8),
                    counter: SizedBox.shrink(),
                    border: InputBorder.none,
                    hintText: 'password',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Material(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.mainColor,
                child: InkWell(
                  onTap: () => print('object'),
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: const Text('log in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'have you forgot your password?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                color: AppColors.strongWhite,
              ),
              const SizedBox(
                height: 40,
              ),
              Material(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.userOnline,
                child: InkWell(
                  onTap: () => print('object'),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .7,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(12),
                    child: const Text('create new account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
