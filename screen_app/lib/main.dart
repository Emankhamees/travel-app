import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff2596be),
        appBar:  AppBar(
          title: const Text("Wellcome To My Flutter App",
          style: 
          TextStyle(
            color: Colors.white,
            fontSize: 20,

          ),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        
        body: Column(
          
          children: [
            
            const CircleAvatar(
              radius: 82,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-BgnrJGe-Td_fsUigp4sUPHZ6u5rm5HGvMg&s"),
              ),
            ),
            const SizedBox(
                  height: 35,
                  ),
            const Text("Eng Amonaa",style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Pacifico",
            ),),
           const SizedBox(
                  height: 5,
                  ),
            const Text("Flutter Developer",
            style:
             TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily:"EBGaramond ",
             ),),
             const SizedBox(
                  height: 5,
                  ),
             const Divider(
              indent: 25,
              endIndent: 25,
              thickness: 2,
             ),
             const SizedBox(
                  height: 35,
                  ),
             Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                
              ),
              child: const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.phone,size: 30,color: Colors.blue,),

                   SizedBox(
                    width: 20,
                  ),
                  Text("01032338732",style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue
                  ),)
                ],
              ),
              
              
             ),
             const SizedBox(
                  height: 35,
                  ),
              Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                
              ),
              child: const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.email,size: 30,color: Colors.blue,),

                   SizedBox(
                    width: 20,
                  ),
                  Text("emookh2002.com",style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue
                  ),)
                ],
              ),
              
              
             ),
          ],
        ),
      )
    );
  }
  

}
