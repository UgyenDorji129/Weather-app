import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/screens/signup/bloc/signup_bloc.dart';
import 'package:flutter_boilerplate/screens/signup/bloc/signup_state.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.only(top: 4.5, bottom: 4.5),
          width: double.infinity,
          decoration: BoxDecoration(
              color: (state is SignupValidState)
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
              onPressed: (state is SignupValidState)
                  ? () {
                      Navigator.pushNamed(context, "/home");
                    }
                  : null,
              child: const Text("SIGN-UP",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white))),
        );
      },
    );
  }
}
