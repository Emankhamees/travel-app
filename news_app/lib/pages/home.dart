
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_servic.dart';
import 'package:news_app/widgets/articales_card.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index =0;
  List<String> category =[
    "sports",
     "business",
     "health",
     "Home",
     "technology"


  ];
  
  @override
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("NewsApp"),
        centerTitle: true,
      ),
     bottomNavigationBar: NavigationBar(
      selectedIndex: index,
      onDestinationSelected: (value) {
        setState(() {
          index=value;
        });
      },
      
      destinations:[
        NavigationDestination(
          icon: Icon(Icons.home),
           label: "Home"),


            NavigationDestination(
          icon: Icon(Icons.health_and_safety),
           label: "health"),
           
           NavigationDestination(
          icon: Icon(Icons.mobile_friendly),
           label: "technology."),
           

            NavigationDestination(
          icon: Icon(Icons.business),
           label: "business"),

           
           
           
            NavigationDestination(
          icon: Icon(Icons.sports),
           label: "sports"),
           
           
           
      ] 
     ),
      body:FutureBuilder(
        //يعني فيوتشر دي وظيفتها انها بترجع تايب لسناب شوت
        //هنا في الفيوتشر بكتب الفانكشن اللي بيحصل فيها وايتنج هو من نفسه بيستني الفانكشن دي تتنفذ وبعدين ينفذ البليدريعني هكتب فيها الفانكشن اللس اما محتاج انفذها
        future:NewsServic(Dio()).getNews(category[index]),
         builder:(Context,Snapshot){
          //السناب شوت دا هو المتغير اللي بياخد قيمهالريترن تايب اللي جاي من فيوتشر يعني لو جاي سترينج ياخد سترينج لو جاي ليست ياخد ليست
         if(Snapshot.connectionState==ConnectionState.waiting){
          //يعني لو السناب شوت لسه بيحمل اعرض انديكتور
          return Center(child: const CircularProgressIndicator());
         }
         
         else if(Snapshot.hasData){
            return ListView.builder(
        itemCount: Snapshot.data!.length,
       itemBuilder: (context, index) {
  return ArticalesCardWidGet(articale: Snapshot.data![index]);
},

        );
          }else if(Snapshot.hasError){
            return Center(child: Text(Snapshot.error.toString())) ;
          }else{
            return SizedBox();
          }

         }
         )
      
    );
  }
}