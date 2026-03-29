import 'package:flutter/material.dart';
import 'package:travel_app/screens/login_screen.dart';
import 'package:travel_app/screens/verivy_screen.dart';
import 'package:travel_app/screens/welcom_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: SingleChildScrollView(
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
                          Text("Get Started",
                      style:   TextStyle(
                       fontSize: 25,
                        fontWeight: FontWeight.bold
                       ),),
                     Text("By Creating Free Account",
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
                  hintText: "Full Name",
                  suffixIcon: const Icon(Icons.person_2_rounded),
                  filled: true,
                  fillColor: const Color(0x33C4C4C4),
                  
                  
                ),
              ),
            ),
           const SizedBox(
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
                  hintText: "Valid mail",
                  suffixIcon:  const Icon(Icons.email),
                  filled: true,
                  fillColor: const Color(0x33C4C4C4),
                  
                  
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
                  hintText: "Phone Number",
                  suffixIcon: const Icon(Icons.phone_android_outlined),
                  filled: true,
                  fillColor: const Color(0x33C4C4C4),
                  
                  
                ),
              ),
            ),
           const SizedBox(
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
                  hintText: "Strong Password",
                  suffixIcon:const Icon(Icons.visibility_off),
                  filled: true,
                  fillColor:  const Color(0x33C4C4C4),
                  
                  
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
              
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const VerivyScreen() ));
              
              }, child:const  Text("forget Password?",
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
             child:const Text("Next",style: TextStyle(
              color: Colors.white,
              fontSize: 22
               
             ),)),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const   Text("already a member?"),
                TextButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginScreen() ));
                },
                 child:const Text("Login",
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