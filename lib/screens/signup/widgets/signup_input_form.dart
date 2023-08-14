// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/screens/signin/style/form_style.dart';

import '../bloc/signup_bloc.dart';
import '../bloc/signup_event.dart';
import '../bloc/signup_state.dart';

class SignupInputForm extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  SignupInputForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "Name",
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF4F575E)),
      ),
      Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
        child: Material(
          elevation: 50.0,
          shadowColor: const Color(0x4DA0D0FF),
          child: TextFormField(
            controller: nameController,
            obscureText: false,
            decoration: formStyle("Enter Name"),
            onChanged: (val) {
              BlocProvider.of<SignupBloc>(context)
                  .add(SignupNameChangedEvent(nameController.text));
            },
          ),
        ),
      ),
      BlocBuilder<SignupBloc, SignupState>(builder: (context, state) {
        if (state is SignupNameErrorState) {
          return Text(
            state.errorMessage,
            style: const TextStyle(color: Colors.red),
          );
        } else {
          return Container();
        }
      }),
      const SizedBox(
        height: 12,
      ),
      const Text(
        "Email ID",
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF4F575E)),
      ),
      Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
        child: Material(
          elevation: 50.0,
          shadowColor: const Color(0x4DA0D0FF),
          child: TextFormField(
              controller: emailController,
              onChanged: (val) {
                BlocProvider.of<SignupBloc>(context)
                    .add(SignupEmailChangedEvent(emailController.text));
              },
              obscureText: false,
              decoration: formStyle("Enter Email ID")),
        ),
      ),
      BlocBuilder<SignupBloc, SignupState>(builder: (context, state) {
        if (state is SignupEmailErrorState) {
          return Text(
            state.errorMessage,
            style: const TextStyle(color: Colors.red),
          );
        } else {
          return Container();
        }
      }),
      const SizedBox(
        height: 12,
      ),
      const Text(
        "Password",
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF4F575E)),
      ),
      Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
        child: Material(
          elevation: 50.0,
          shadowColor: const Color(0x4DA0D0FF),
          child: TextFormField(
              controller: passwordController,
              onChanged: (val) {
                BlocProvider.of<SignupBloc>(context)
                    .add(SignupPasswordChangedEvent(passwordController.text));
              },
              obscureText: true,
              decoration: formStyle("Enter Password")),
        ),
      ),
      BlocBuilder<SignupBloc, SignupState>(builder: (context, state) {
        if (state is SignupPasswordErrorState) {
          return Text(
            state.errorMessage,
            style: const TextStyle(color: Colors.red),
          );
        } else {
          return Container();
        }
      }),
      const SizedBox(
        height: 12,
      ),
      const Text(
        "Confirm Password",
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF4F575E)),
      ),
      Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
        child: Material(
          elevation: 50.0,
          shadowColor: const Color(0x4DA0D0FF),
          child: TextFormField(
              controller: confirmPasswordController,
              onChanged: (val) {
                BlocProvider.of<SignupBloc>(context).add(
                    SignupConfirmPasswordChangedEvent(
                        confirmPasswordController.text,
                        passwordController.text));
              },
              obscureText: true,
              decoration: formStyle("Re-enter Password")),
        ),
      ),
      BlocBuilder<SignupBloc, SignupState>(builder: (context, state) {
        if (state is SignupConfirmPasswordErrorState) {
          return Text(
            state.errorMessage,
            style: const TextStyle(color: Colors.red),
          );
        } else {
          return Container();
        }
      }),
    ]);
  }
}
