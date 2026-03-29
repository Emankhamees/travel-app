import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:travel_app/screens/welcom_screen.dart';

class VerivyScreen extends StatefulWidget {
  const VerivyScreen({super.key});

  @override
  State<VerivyScreen> createState() => _VerivyScreenState();
}

class _VerivyScreenState extends State<VerivyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        
        children:    [
          const SizedBox(
            height: 120,
          ),
          
        const Text("Almost there",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(
            height: 30,
          ),
          const Text("please Enter Your 6 digets code sent to your \n email emooKh2002@gmail.com for verification",

          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 80,
          ),
         Padding(
      
           padding: const EdgeInsets.symmetric( horizontal:40),
           child: PinCodeTextField(
            appContext: context, length:6,
           pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(10),
            fieldHeight: 36,
            fieldWidth: 36,
            activeFillColor: Colors.grey[200],
            inactiveColor: Colors.grey[200],
            selectedFillColor: Colors.grey[200],
            activeColor:Colors.grey[200],
            selectedColor: Colors.blue
           
          
           ),
           
           keyboardType: TextInputType.number,
      
           
           ),
         ),
         SizedBox(height: 50,),
           ElevatedButton(
             style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
             minimumSize:const Size(350, 50)
             ),
              onPressed: (){
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WelcomScreen() ));
              },
             child: const Text("Verivy",style: TextStyle(
              color: Colors.white,
              fontSize: 22
               
             ),)),
           
              TextButton(

                onPressed: (){},
               child:const Text("Dont Recive any code? Resend Again",
               style: TextStyle(
                fontSize: 13,
                color: Colors.black,
           
               ),)),
               TextButton(onPressed: (){},
               child:const Text("Request a new code in 00:30s",
               style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
           
               ),))

          


        ],
      ),
    );
  }
}