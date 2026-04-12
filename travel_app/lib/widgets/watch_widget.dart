import 'package:flutter/material.dart';
import 'package:travel_app/models/watch_model.dart';
import 'package:travel_app/screens/product_home_view.dart';

class WatchWidget extends StatelessWidget {
  const WatchWidget({super.key, required this.watch});
  final WatchModel watch;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      color: Colors.white,
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
    
          Image.asset(watch.image,width: 400,
          height: 140,),
         
          Text(watch.name,style: TextStyle(fontWeight: FontWeight.bold)),
          Text(watch.type,style: TextStyle(color: Colors.grey),
        
            ),
            SizedBox(
              height: 30,
            ),
          Text(watch.price,style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),),
              const  SizedBox(height: 20),
        ],
      )
      
        );
      
    
  }
}