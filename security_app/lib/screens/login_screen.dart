import 'dart:math';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController password=TextEditingController();
  TextEditingController email =TextEditingController();
  GlobalKey<FormState>emailKey=GlobalKey();
  bool obsecur =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      
      body:   Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
            const SizedBox(
              height: 50,
            ),
            Form(
              key: emailKey,
              child: TextFormField(
                obscureText: obsecur,
                obscuringCharacter: "*",
                controller: email,
               decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                hintText: "email",
                labelText: "Email",
                suffixIcon:IconButton(onPressed: (){
                  setState(() {
                    obsecur=!obsecur;
                  });
                }, icon: obsecur?const Icon(Icons.visibility_off)
                :const Icon(Icons.visibility),)
                
               ),
               validator: (value) {
                 if(value!.isEmpty){
                  return "Please Enter Your Email";
                 }else if (
                  !value.contains("@gmail.com")
                 ){
                  return "Please Enter Valid Email";
                 }
                 
                 
                 
                 
                 else{
                  return null;
                 }
               }, 
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          
             TextField(
            obscureText: obsecur,
            obscuringCharacter: "*",
            controller: password,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(20)
              ),
              hintText: "password",
              labelText: "Passwod",
              suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    obsecur=!obsecur;
                  });
              }, 
              icon: obsecur? const Icon(Icons.visibility_off): const Icon(Icons.visibility)
              ),)
            ),
              const SizedBox(
              height: 50,
            ),
             ElevatedButton(onPressed: (){
              if(emailKey.currentState!.validate()){
                log(email.text as num);
              }
            }
            , child: const Text("Login")),

          ]

      ,
      ),
    );
  }
}