

import 'package:flutter/material.dart';
import 'package:security_app/screens/login_screen.dart';


import 'package:security_app/widgets/onboard_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});
 

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
 
 PageController controller = PageController();
 int index = 0;
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body: 
         Stack(
          alignment: Alignment.center,
           children: [PageView(
            controller: controller,
            onPageChanged: (value) {
              setState(() {
                index =value;
              });
            },
           
            children: const [
             OnboardWidget(image: "assets/images/images3.jpg",
             titel:"Welcom To MySecurity App" ,
             subTitel: "Aman is a safety app designed to protect you and your loved ones. Stay connected, share your location, and get help instantly in emergencies"),
           
           
           
                  OnboardWidget(image: "assets/images/images2.jpg",
             titel:"Welcom To MySecurity App" ,
             subTitel: "Aman is a safety app designed to protect you and your loved ones. Stay connected, share your location, and get help instantly in emergencies"),
            
            
            OnboardWidget(image: "assets/images/download.jpg",
             titel:"Welcom To MySecurity App" ,
             subTitel: "Aman is a safety app designed to protect you and your loved ones. Stay connected, share your location, and get help instantly in emergencies"),
           
           ],
           
           ),
   Positioned(
    bottom: 200,
     child: SmoothPageIndicator(    
     controller: controller,  // PageController    
     count:  3,    
     effect:  const WormEffect(),  // your preferred effect    
     onDotClicked: (index){    
       }
     ),
   ),
       Positioned(
        bottom: 100,
     child: MaterialButton(
      minWidth: 150,
      height: 50,
      color: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      )
      
      ,onPressed: (){
       if(index==2){
        Navigator.push(context,
        MaterialPageRoute(builder: 
        (context)=>const LoginScreen()
        ));
         
       } else{
        controller.nextPage(duration: const Duration(milliseconds: 100),
         curve:Curves.linear);
       }
      }, 
     child:  Text(index ==2? "GetStarted":"Next")),
   )    
      ], ),
    );
      
   
  }
}