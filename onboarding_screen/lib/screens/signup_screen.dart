import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
  title:  const Text(""),
  backgroundColor: Colors.transparent,
  centerTitle: true,
),
      body: 
       Padding(
        padding:const EdgeInsets.all(20),
         child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           const Row(
            children: [
              Text("Lets Create \nAccount",
              style: TextStyle(
                color: Colors.teal,
                fontSize: 20
              ),)
            ],
           ),
            SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor:  const Color.fromARGB(255, 238, 237, 237),
                    hintText: "Enter Your Email",
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                
                  ),
                ),
              ),
               SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 238, 237, 237),
                    hintText: "Enter Your number",
                    prefixIcon: const Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                
                  ),
                ),
              ),
               SizedBox(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 238, 237, 237),
                    hintText: "Enter Your password",
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                
                  ),
                ),
              ),
               SizedBox(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 238, 237, 237),
                    hintText: "confirm password",
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                
                  ),
                ),
              ),
              ElevatedButton(
                            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.teal
                            ),
                            onPressed: (){}, 
                          child: const Text("Create Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                          ),
                          )),
                          const Text("Or Continue Whith"),
                          Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                            const  Text("Already Have Account?"),
                              TextButton(onPressed: (){
                                Navigator.pop(context);
                              },
                               child:   const Text("Sign_in",style: TextStyle(
                                color: Colors.teal,
                                fontSize: 15
                              ),))
                            ],
                          )
         
          ],
               ),
       ),
    );
  }
}

 