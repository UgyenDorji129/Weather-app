import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/main_page_wrapper.dart';
import 'screens/signin_siginup_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Assignment',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const SigninSignupWrapper(),
        "/home": (context) => const MainPageWrapper()
      },
    );
  }
}
