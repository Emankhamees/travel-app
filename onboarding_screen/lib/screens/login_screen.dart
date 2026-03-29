import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title:   const Text(""),
  backgroundColor: Colors.transparent,
  centerTitle: true,
),
      body: Padding(padding:const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Row(
              children: [
                Text("Hey ,\nWelcome Back",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 238, 237, 237),
                  hintText: "Enter Your Email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
              
                ),
              ),
            ),
             const SizedBox(height: 30,),
             SizedBox(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  
                  filled: true,
                  fillColor: const Color.fromARGB(255, 250, 245, 245),
                  hintText: "Enter Your Password",
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
              
                ),
              ),
            ),
            Align 
            (alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){},
               child:    const Text("forgot Password",
               style: TextStyle(
                color: Colors.teal,
                fontSize: 15,
                fontWeight: FontWeight.bold
               ),)),
            ),
            const  SizedBox(
              height: 50,
            ),
            ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                           backgroundColor:Colors.teal
                          ),
                          onPressed: (){}, 
                        child: const Text("Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                        )),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.end
                        ,
                          children: [

                             const Text(" Dont Have any Account?"),
                            TextButton(onPressed: (){
                             Navigator.pushNamed(context, '/signup'  );
                            },
                             child:  const Text(" Sign Up",
                             style: TextStyle(
                              color: Colors.teal,
                              fontSize: 15
                             ),))
                            
                            
                          ],
                        ),

             

          ],
        ),
      ),
    );
  }
}