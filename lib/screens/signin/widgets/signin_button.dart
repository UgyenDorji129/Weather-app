// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/screens/signin/bloc/signin_bloc.dart';
import 'package:flutter_boilerplate/screens/signin/bloc/signin_state.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SigninBloc, SigninState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.only(top: 4.5, bottom: 4.5),
          width: double.infinity,
          decoration: BoxDecoration(
              color: (state is SigninValidState)
                  ? const Color(0xFF449DD1)
                  : Colors.grey,
              boxShadow: const [
                BoxShadow(color: Color(0x4DA0D0FF), spreadRadius: 2),
              ],
              border: Border.all(
                width: 0.15,
                color: const Color(0xffADB5BD),
              ),
              borderRadius: BorderRadius.circular(8)),
          child: TextButton(
              onPressed: (state is SigninValidState)
                  ? () {
                      Navigator.pushNamed(context, "/home");
                    }
                  : null,
              child: const Text("SIGN-IN",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white))),
        );
      },
    );
  }
}
