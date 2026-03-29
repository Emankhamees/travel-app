import 'package:flutter/material.dart';
import 'package:messenger_app/widgets/chat_widget.dart';

import 'package:messenger_app/widgets/story_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  
 const HomeScreen({super.key});
   
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD0FRZHTxL49QNbvt3Pai4tSEw9PjAKQP6ew&s"),
            ),
            SizedBox(
              width: 20,
            ),
            Text("Chats",style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
           icon: const Icon(Icons.camera_alt)),

           IconButton(onPressed: (){},
           icon:const Icon(Icons.edit))
          ],
      ),
      
      body: Column(
        children: [
         const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 239, 229, 229),
              
            ),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon:const Icon(Icons.search,
                size: 30,),),
                const Text("search",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20
                ),)
              ],
            ),
          ),
          const StoryWidget(),
          const ChatWidget(),
          
         
        ],
      ),
    );
  }
}