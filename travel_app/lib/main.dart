import 'package:flutter/material.dart';
import 'package:travel_app/screens/login_screen.dart';
import 'package:travel_app/screens/onboarding_screen.dart';
import 'package:travel_app/screens/signup_screen.dart';
import 'package:travel_app/screens/splash_screen.dart';
import 'package:travel_app/screens/verivy_screen.dart';
<<<<<<< HEAD
import 'package:travel_app/screens/watch_home_screen.dart';
=======
>>>>>>> 1ef646195fb6d8624dbeec57125b9455ecc6eafb
import 'package:travel_app/screens/welcom_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:SplashScreen(),
    );
  }
}

