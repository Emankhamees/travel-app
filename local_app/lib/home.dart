import 'package:flutter/material.dart';
import 'package:local_app/database/cach_helper.dart';
import 'package:local_app/database/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    ScreenSize.initial(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller:nameController ,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "name",
                labelText: "Enter Your Name",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: ()async{
                  await CachHelper.saveData(key: "name", 
                  value: nameController.text);
                  setState(() {
                    
                  });
                },
                 child: const Text("Save")),
                  ElevatedButton(onPressed: ()async{
                    await CachHelper.removData(key: "name");
                    setState(() {
                      
                    });

                  },
                 child: const Text("Remove")),

              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text("Your Name Is ${CachHelper.getInsData(key: "name")}  ",style: const TextStyle(
              color:  Color.fromARGB(255, 82, 6, 95),
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(
              height: 40,
            ),
            CircleAvatar(
              radius: ScreenSize.width/10,
              backgroundColor: Colors.blueGrey,

            )
          ],
        ),
      ),
    );
  }
}