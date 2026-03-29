import 'package:flutter/material.dart';
import 'package:travel_app/screens/signup_screen.dart';
import 'package:travel_app/screens/verivy_screen.dart';
import 'package:travel_app/screens/welcom_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
           
            crossAxisAlignment: CrossAxisAlignment.center,
                
           
            children: [
            const  SizedBox(
                height: 150,
              ),
              Stack(
                children: [
                    Image.asset("assets/image/login.png"),
                  const   Positioned(
                      top: 130,
                       child: Column(
                        children: [
                          Text("Welcom Back",
                      style:   TextStyle(
                       fontSize: 25,
                        fontWeight: FontWeight.bold
                       ),),
                     Text("sign in to access your account",
                       style: TextStyle(
                               
                                 ),)
                        ],
                       ),
          
                     ),
                     ],
             ),
            SizedBox(
              height: 50,
              width: 350,
              child: TextField(
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  hintText: "Enter Your Email",
                  suffixIcon:const Icon(Icons.email),
                  filled: true,
                  fillColor:  const Color(0x33C4C4C4),
                  
                  
                ),
              ),
            ),
          const  SizedBox(
              height: 20
              ,),
            
             SizedBox(
              height: 50,
              width: 350,
              child: TextField(
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  hintText: "Password",
                  suffixIcon: const Icon(Icons.visibility_off),
                  filled: true,
                  fillColor: const Color(0x33C4C4C4),
                  
                  
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
              
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const VerivyScreen() ));
              
              }, child:  const Text("forget Password?",
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
              ),)),
            ),
           const SizedBox(
              height: 120,
            ),
            ElevatedButton(
             style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
             minimumSize:const Size(350, 50)
             ),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WelcomScreen() ));
              },
             child: const Text("Next",style: TextStyle(
              color: Colors.white,
              fontSize: 22
               
             ),)),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text("New member?"),
                TextButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignupScreen() ));
                },
                 child:const Text("register now",
                 style: TextStyle(
                  color: Colors.red
                 ),))
              ],
             )
            
              
            ],
          ),
        ),
      ),
    );
  }
}