import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sqlite_app/DataBase/sq_helper.dart';
import 'package:sqlite_app/models/notes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  List<NoteModel> notes=[];

 TextEditingController title =TextEditingController();
 TextEditingController content=TextEditingController();
 
 insert(NoteModel note)async{
  await Sqhelper().insertNotes(note);
  load();


 }
 load()async{
  var data =await Sqhelper().loadNotes();
  setState(() {
    notes=data;
  });



 }
 update( NoteModel note)async{
  
  await Sqhelper().update(note);


 }
 delete(int id)async{
  await Sqhelper().deleteNote(id);
  load();
 }


  @override

  
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      body: Padding(
        
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TextField(
              controller: title,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "titel",
             labelText: "Enter Your Titel"
              ),

            ),
            const SizedBox(
              height: 50,
            ),

              TextField(
                controller: content,
              maxLines: 4,
              decoration: const InputDecoration(
                
                border: OutlineInputBorder(),
                hintText: "content",
             labelText: "Enter Your content"
              ),
            ),
             const SizedBox(
              height: 50,
            ),
            MaterialButton(
              minWidth: 150,
              height: 45,
              color: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              
              
              onPressed: (){
                NoteModel note =NoteModel(content: content.text,
                 titel: title.text);
                 insert(note );
                 setState(() {
                   
                 });
              },
            child: const Text("Save"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: notes==null?0:notes.length,
                
                itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey,
                    
                  ),
                  width: double.infinity,
                  height: 50,
                  child: ListTile(
                  leading: Text(notes[index].titel,
                  ),
                  title: Text(notes[index].content),
                  trailing: IconButton(onPressed: (){
                    delete(notes[index].id!);
                    setState(() {
                      
                    });
                  },
                   icon: const Icon(Icons.delete)),
                  ),
                );
              }),
            )
            
          ],
        ),
      ),


    );
  }
}