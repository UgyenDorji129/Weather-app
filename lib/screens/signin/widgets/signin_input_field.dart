import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/signin_bloc.dart';
import '../bloc/signin_event.dart';
import '../bloc/signin_state.dart';
import '../style/form_style.dart';

// ignore: must_be_immutable
class SigninInputForm extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SigninInputForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Username",
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
              onChanged: (val) {
                BlocProvider.of<SigninBloc>(context).add(SigninNameChangedEvent(
                    nameController.text, passwordController.text));
              },
              decoration: formStyle("Enter Username"),
            ),
          ),
        ),
        BlocBuilder<SigninBloc, SigninState>(builder: (context, state) {
          if (state is SigninNameErrorState) {
            return Text(
              state.errorMessage,
              style: const TextStyle(color: Colors.red),
            );
          } else {
            return Container();
          }
        }),
        const SizedBox(
          height: 24,
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
                obscureText: true,
                onChanged: (val) {
                  BlocProvider.of<SigninBloc>(context).add(
                      SigninPasswordChangedEvent(
                          nameController.text, passwordController.text));
                },
                decoration: formStyle("Enter password")),
          ),
        ),
        BlocBuilder<SigninBloc, SigninState>(builder: (context, state) {
          if (state is SigninPasswordErrorState) {
            return Text(
              state.errorMessage,
              style: const TextStyle(color: Colors.red),
            );
          } else {
            return Container();
          }
        }),
      ]),
    );
  }
}
