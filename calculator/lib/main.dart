import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int n1 =0;
   int n2 =0;
    int n3 =0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("Calculator ",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),),
          centerTitle: true,
          actions: const [
             Icon(Icons.calculate_outlined,
            size: 40,
            color: Colors.black,),
            SizedBox(
              width: 120,
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 120,
                ),
                Text("$n1",
                style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
                      ),),
                Column(
                  
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          n1++;
                        });
                      },
                      child: const Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                     InkWell(
                      onTap: () {
                        setState(() {
                          n1-- ;
                        });
                      },
                       child: const Icon(
                        Icons.remove,
                        size: 30,
                        color: Colors.black,
                                           ),
                     ),
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                  Text("$n2",style:const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
                      ),),
                 Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          n2++;
                        });
                      },
                      child: const Icon(
                                                Icons.add,
                                                size: 30,
                                                color: Colors.black,
                                              ),
                    ),
                     InkWell(
                      onTap: () {
                        setState(() {
                          n2--;
                        });
                      },
                       child: const Icon(
                        Icons.remove,
                        size: 30,
                        color: Colors.black,
                                           ),
                     ),
                  ],
                ),
              ],
            ),
            ElevatedButton(onPressed:(){
              setState(() {
                n3=n1+n2;
              });
            }, child:
             const Text("Addition +")),

              ElevatedButton(onPressed:(){
                 setState(() {
                n3=n1-n2;
              });
              }, child:
             const Text("Subtraction -")),
             
              ElevatedButton(onPressed:(){
                  setState(() {
                    n3=n1~/n2;
                  });
              }, child:
                const Text("Division÷")),

                ElevatedButton(onPressed:(){
                  setState(() {
                    n3=n1*n2;
                  });
                }, child:
                const Text("Multiplication *")),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child:  Center(
                    child: Text("Result = $n3",style: 
                    TextStyle(
                      color:const Color.fromARGB(255, 16, 70, 113),
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                )
             
          ],
        ),
      ),
      
    );
  }
}

