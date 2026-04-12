import 'package:flutter/material.dart';
import 'package:travel_app/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
<<<<<<< HEAD
  void initState() {
    super.initState();

   
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 4), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        );
      });
    });
=======
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context,
       MaterialPageRoute(builder: (c) => OnboardingScreen() ));
    }
    
    );
  

>>>>>>> 1ef646195fb6d8624dbeec57125b9455ecc6eafb
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: 
      Center(
        child: Image.asset('assets/image/splash.png',
        width: 300,
        height: 200,
        ),
      ),
    );
  }
}