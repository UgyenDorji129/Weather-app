import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/screens/signin/widgets/google_facebook.dart';
import 'package:flutter_boilerplate/screens/signup/widgets/signup_button.dart';
import 'package:flutter_boilerplate/screens/signup/widgets/signup_divider.dart';
import 'package:flutter_boilerplate/screens/signup/widgets/signup_form.dart';
import 'package:flutter_boilerplate/screens/signup/widgets/terms_and_condition.dart';

import 'bloc/signup_bloc.dart';
import 'bloc/signup_state.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(41, 20, 41, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SignupForm(),
          const TermsAndCondition(),
          BlocBuilder<SignupBloc, SignupState>(builder: (context, state) {
            if (state is SignupCheckedErrorState) {
              return Text(
                state.errorMessage,
                style: const TextStyle(color: Colors.red),
              );
            } else {
              return Container();
            }
          }),
          const SizedBox(
            height: 10,
          ),
          const SignupButton(),
          const SizedBox(
            height: 15,
          ),
          const SignupDivider(),
          const SizedBox(
            height: 15,
          ),
          const SocialSigin()
        ],
      ),
    );
  }
}
