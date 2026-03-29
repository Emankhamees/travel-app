import 'package:flutter/material.dart';
import 'package:messenger_app/models/chat_model.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context,index){
              return ListTile(
                leading:CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(chats[index].image),
                  
                ) ,
                title: Text(chats[index].name),
                subtitle:Row(
                  children: [
                    Text(chats[index].message),
                    Text(chats[index].time)
                  ],
                ),
                trailing: Icon(chats[index].icon),
              );
            }),
          );
  }
}