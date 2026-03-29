import 'package:flutter/material.dart';

class OnboardWidget extends StatelessWidget {
  const OnboardWidget({super.key, required this.image, required this.titel, required this.subTitel});
  final String image;
   final String titel;
    final String subTitel;

  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
        Center(child: Image.asset(image)),
       const SizedBox(
          height: 50,
        ),
        Text(titel,style:const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
         const SizedBox(
          height: 50,
        ),
       
        
         SizedBox(
          width: 400,
          height: 60,
          child: Text(subTitel,
          style: 
         const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
           color: Color.fromRGBO(158, 158, 158, 1)
          ),),
        )
        

      ],
    );
  }
}