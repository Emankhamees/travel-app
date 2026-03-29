import 'package:flutter/material.dart';
import 'package:messenger_app/home.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.chat_rounded,
            size: 250,
            color: Colors.white,),
            const Text("Welcom To My Messenger App",style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),

           IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context){
              return const HomeScreen();
            }));
           }, 
           icon: const Icon(Icons.arrow_forward,
           size: 60,
           color: Colors.white,),)
          
          ],
        ),
      ),
    );
  }
}