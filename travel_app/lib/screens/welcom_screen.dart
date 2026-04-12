import 'package:flutter/material.dart';
import 'package:travel_app/screens/watch_home_screen.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({super.key});

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        
             
        children: [
          SizedBox(
            height: 100,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WatchHomeScreen() ));},
            child: Text("Welcom To Home",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
          
          
                  ),
      
           SizedBox(
            height: 200,
          ),
          Align(
             alignment: Alignment.center,
            child: Image.asset("assets/image/welcom.png"))
        ],
      ),
    );
  }
}