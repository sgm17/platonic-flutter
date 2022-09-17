import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterForm extends ConsumerStatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterFormState();
}

class _RegisterFormState extends ConsumerState<RegisterForm> {
  late GlobalKey<FormState> _formKey;
  late String _username, _email;
  String _password = '';

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
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Platonic',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(226, 47, 47, 1),
                    fontFamily: 'Retrokia',
                    fontSize: 48,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                'register to see the newest crushes',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(239, 239, 239, 1))),
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      textInputAction: TextInputAction.next,
                      maxLength: 100,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                      onSaved: (String? username) => _username = username!,
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.only(bottom: 10, left: 8, right: 8),
                        counter: SizedBox.shrink(),
                        border: InputBorder.none,
                        hintText: 'username',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
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
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(239, 239, 239, 1))),
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
                            color: Colors.grey),
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
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(239, 239, 239, 1))),
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
                            color: Colors.grey),
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
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(239, 239, 239, 1))),
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
                        hintText: 'repeat password',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color.fromRGBO(226, 47, 47, 1),
                    child: InkWell(
                      onTap: () => print('object'),
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: const Text('select area',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                'by registering you accept our conditions of use. Get more information about how we use your information in our privacy policy, as well as the use we make of cookies in our cookie policy',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11.2,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
