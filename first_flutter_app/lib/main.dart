import 'package:flutter/material.dart';

void main() {
  runApp(
   MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Text("hello"),
          
        ),
        
        appBar: AppBar(
          title:const Center(
            child: Text("My app",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.normal
            ),),
          ),
          backgroundColor: Colors.blue,
        ), 
        body: Center(
          child: RichText(text:const TextSpan(children:[
            TextSpan(text: "Wellcom",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),),
          
          TextSpan(text:"To My",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),),
          TextSpan(text: "Application",
          style: TextStyle(
            color: Colors.blue,
          ))] )),
        )

      ),
    ),
    
  );
}

