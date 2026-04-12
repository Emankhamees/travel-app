import 'package:flutter/material.dart';

class ProductHomeView extends StatefulWidget {
  const ProductHomeView({super.key});

  @override
  State<ProductHomeView> createState() => _ProductHomeViewState();
}

class _ProductHomeViewState extends State<ProductHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        automaticallyImplyLeading: false,
        title: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
              const Icon(Icons.arrow_back_sharp,size: 30,),
              Image.asset("assets/image/Heart.png",width: 40,)
            ],
          ),
        ),
      ),
      body:Column(
       
        
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(context: context, 
                builder: (context){
                  return Container(
                    width: double.infinity,
                    height: 390,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        
                      )
                    ),
                  );
                });
              },
              child: Image.asset("assets/image/watch2.png",
              ),
            ),
          ),
         const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
            radius: 7,
          backgroundColor: Colors.black,
          ),
           SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 7,
          backgroundColor:  Color.fromARGB(255, 223, 86, 23),
          ),
           SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 7,
          backgroundColor: Colors.black,
          ),
            ],
          ),
          
        ],
      ),
   

   
    );
  }
}