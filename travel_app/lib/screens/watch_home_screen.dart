import 'package:flutter/material.dart';
import 'package:travel_app/models/watch_model.dart';
import 'package:travel_app/screens/product_home_view.dart';
import 'package:travel_app/widgets/watch_widget.dart';

class WatchHomeScreen extends StatefulWidget {
  const WatchHomeScreen({super.key});

  @override
  State<WatchHomeScreen> createState() => _WatchHomeScreenState();
}
List<String> watchs=['Smart watch','Apple','Samsung','Xiaomi','Huawei'];
int selectedIndex=-1;
List<WatchModel> watches = [
  WatchModel(
    name: "Apple Watch SE",
    type: "Apple",
    price: "349.99",
    image: "assets/image/watch1.png",
  ),
  WatchModel(
    name: "Galaxy Watch 4",
    type: "Samsung",
    price: "249.99",
    image: "assets/image/watch2.png",
  ),
  WatchModel(
    name: "Amazfit GTS 2",
    type: "Amazfit",
    price: "199.99",
    image: "assets/image/watch3.png",
  ),
  WatchModel(
    name: "Galaxy Watch 7",
    type: "Samsung",
    price: "279.99",
    image: "assets/image/watch4.png",
  ),
];


class _WatchHomeScreenState extends State<WatchHomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Find Your Suitable\n Watch Now!.",
        style:  TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        children: [
          
          SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                 border: Border.all(
                  color: Colors.grey,
                  width: 1
                 ),
                  
                  borderRadius: BorderRadius.circular(30),
                ),
                child:const Row(
                  
                  children: [
                      SizedBox(
                        width: 10,
                       ),
                   Icon(Icons.search),
                    SizedBox(
                        width: 10,
                       ),
                   Text("Search Product",
                   style: TextStyle(
                    color: Colors.grey
                   ),)
                  ],
                ),
              ),
              Image.asset("assets/image/Filter.png")
            ],
          
          ),
          SizedBox(height: 100,
            child: ListView.separated(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              itemCount: watchs.length,
              separatorBuilder: (c,cc){
                return SizedBox(
                  width: 15,
                );
              },
              itemBuilder: (context,index){
                bool isSelect =index==selectedIndex;
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex=index;
                    });
                  },
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(watchs[index],style:TextStyle(
                        color: isSelect? const Color.fromARGB(255, 55, 102, 182):Colors.grey,
                        fontSize: 18
                      ),),
                      if(isSelect) Container(
                      
                        width: 40,
                        height: 3,
                        color:const Color.fromARGB(255, 55, 102, 182) ,
                      )
                    ],
                  ),
                );
              },
             
             ),
          ),
            GridView.builder(
              itemCount: watches.length,
              shrinkWrap: true,

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            childAspectRatio: 0.75),
             itemBuilder:(context,index){
              return GestureDetector(
                onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
           return  const ProductHomeView();
          }));
      },
                
                
                child: WatchWidget(watch: watches[index]));
             } )

        ],
      ),
    );
  }
}