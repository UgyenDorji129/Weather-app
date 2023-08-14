// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/signin/widgets/signin_button.dart';
import 'package:flutter_boilerplate/screens/signin/widgets/signin_form.dart';
import 'package:flutter_boilerplate/screens/signin/widgets/toggle_link.dart';

import 'widgets/google_facebook.dart';
import 'widgets/signin_divider.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(41, 32, 41, 0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SigninForm(),
          Text(
            "Forgot Password?",
            style: TextStyle(
                color: Color(0xFF508DF8),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.end,
          ),
          SizedBox(
            height: 58,
          ),
          SigninButton(),
          SizedBox(
            height: 74,
          ),
          SiginDivider(),
          SizedBox(
            height: 31,
          ),
          SocialSigin(),
          SizedBox(
            height: 58,
          ),
          ToggleLink()
        ],
      ),
    );
  }
}
