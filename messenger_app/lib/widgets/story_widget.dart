import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: storyImage.length,
              itemBuilder: (context,index){
              return  Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 43,
                  backgroundColor:Colors.blue ,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(storyImage[index]),
                  ),
                ),
              );
            }),
          );
  }
}




 List <String> storyImage =[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo4_SCEqLdUtFXEykCiyUM1B41rwGgIdiCIQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgjdp2IPJfSCd7hGd31xjKi-W-3s7u-YaSqQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_oc5Hfk6BZf_SuebviVu8iugvgOUqO-W-2A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2vBQ1vOla9pPM6M0ZsYZb7OckCS21cgN_Q&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmZNRikC6GXiKTtuAFzOaO4L6SYZDwdYP-Og&s",
    
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRecciky8VBR_kx_PfybYOglHnz4Pwo7f-QpQ&s"];