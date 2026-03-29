import 'package:flutter/material.dart';

class OnboaerdingScreen extends StatelessWidget {
  const OnboaerdingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Padding(
        padding:const EdgeInsets.all(20),
         child: 
         
         Column(
          
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            
              
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkHFxtAul1eNXWu8Q62W_keqMhHBujEQwDeg&s",
                        
                        height: 150,),
                        const  SizedBox(height: 40,),
                       const  Text("welcome To My App",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                         const SizedBox(height: 10,),
                       const Text("My App is a user-friendly platform that helps you manage your health and wellness effortlessly. It provides personalized tools and insights to track your progress and stay motivated every day.",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),),
                        const  SizedBox(height:200,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                               backgroundColor: Colors.teal
                          ),
                          onPressed: (){
                            Navigator.pushNamed(context, '/login'  );
                          }, 
                        child: const Text("GetStarted",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                        )),
                       
                      ],
               ),
       ),
    );
  }
}