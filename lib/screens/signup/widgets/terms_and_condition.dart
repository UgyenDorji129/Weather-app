// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/screens/signup/bloc/signup_event.dart';

import '../bloc/signup_bloc.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Checkbox(
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value!;
            });
            BlocProvider.of<SignupBloc>(context)
                .add(SignupCheckedChangedEvent(value!));
          },
        ),
        const Text(
          "By signing up, you agree to our ",
          style: TextStyle(fontSize: 12, color: Color(0xFF6A7178)),
        ),
        const Text(
          "Privacy Policy",
          style: TextStyle(fontSize: 12, color: Color(0xff017AAD)),
        ),
      ]),
    );
  }
}
