import 'package:flutter/material.dart';
import 'package:onboarding_screen/screens/login_screen.dart';
import 'package:onboarding_screen/screens/onboaerding_screen.dart';

import 'package:onboarding_screen/screens/signup_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboaerdingScreen(),
        '/login': (context) =>const  LoginScreen(),
        '/signup': (context) => const SignupScreen(),
      },
    );
  }
}

