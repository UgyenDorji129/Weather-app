import 'package:flutter/material.dart';

import 'signup_input_form.dart';

class SignupForm extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            SignupInputForm(),
            const SizedBox(
              height: 30,
            ),
          ],
        ));
  }
}
