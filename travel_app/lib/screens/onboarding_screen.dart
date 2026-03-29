import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/screens/login_screen.dart';
import 'package:travel_app/widgets/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller =PageController();
  int index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children:[ PageView(
            
                controller: controller,
                
                   onPageChanged: (value) {
                  setState(() {
                  index =value;
                 });
                   },
                      children:const [
                      OnboardWidget(
                image: "assets/image/onboardimg1.png",
                titel: "Explore the\n world Easily",
                subTitel: "To Your desire",
              
              ),
              OnboardWidget(
                image: "assets/image/onboarding2.png",
                titel: "Reach the \nunknown spot",
                subTitel: " To Yiur destination",
              
              ),
              OnboardWidget(
                image: "assets/image/onboarding3.png",
                titel: "Make connects\n with Travello",
                subTitel: "To Your dream trip",
              
              ),
                      ],
                
                
                
              ),
              Positioned(
                bottom: 200,
                child: SmoothPageIndicator(  
                    
                 controller: controller,  // PageController    
                  count:  3,    
                  effect: const  WormEffect(
                    dotColor: Colors.red,
                    activeDotColor:Colors.red,
                    paintStyle: PaintingStyle.fill,
                  ),  // your preferred effect    
                   onDotClicked: (index){    
                }
                   ),
              ),
              GestureDetector(
                onTap: (){
                  if(index==2){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginScreen() ));
                  }else{
                    controller.nextPage(duration:const Duration(milliseconds: 100),
                     curve: Curves.linear);
                  }
                },
                child: Positioned(
                  bottom: 20,
                  child: Image.asset("assets/image/Frame 3.png",width: 50,
                  height: 50,),
                ),
              )


              ]

            ),
          )
        ],
      ),
    );
  }
}