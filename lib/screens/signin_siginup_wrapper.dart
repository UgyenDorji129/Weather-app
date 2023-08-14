import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/screens/signin/bloc/signin_bloc.dart';
import 'package:flutter_boilerplate/screens/signup/bloc/signup_bloc.dart';

import 'signin/signin.dart';
import 'signup/signup.dart';

class SigninSignupWrapper extends StatelessWidget {
  const SigninSignupWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: const TabBar(
            indicatorWeight: 6,
            padding: EdgeInsets.fromLTRB(41, 44, 41, 0),
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            unselectedLabelStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            labelColor: Color(0xFF449DD1),
            unselectedLabelColor: Color(0xFFADB5BD),
            indicatorColor: Color(0xFF449DD1),
            tabs: [
              Tab(
                text: "SIGN-IN",
              ),
              Tab(
                text: "SIGN-UP",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BlocProvider(
                create: (context) => SigninBloc(), child: const SignIn()),
            BlocProvider(
                create: (context) => SignupBloc(), child: const SignUp()),
          ],
        ),
      ),
    );
  }
}
