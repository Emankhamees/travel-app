import 'dart:async';

import 'package:flutter/material.dart';
import 'package:one_clock/one_clock.dart';
import 'package:segment_display/segment_display.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
 
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   String clockType ="analog clock";
   double clockSize=200;
   Color clockColor =Colors.black;
   bool selectedColor=true;
   List<Color> clockColors=[Colors.black,Colors.blueAccent,Colors.cyan,Colors.orangeAccent,Colors.grey,Colors.brown,Colors.greenAccent];
   late Timer timer;
   late DateTime currentTime=DateTime.now();
   @override
  void initState() {
    timer=Timer.periodic(const Duration(seconds: 1), (_){
      setState(() {
        currentTime=DateTime.now();
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Octal Clock",
        style:
         TextStyle(
          color: Colors.white,
          fontSize: 28

         ),),
         
      ),
     drawer:  Drawer(
      child: ListView(
       
        children: [
          DrawerHeader(
            
            decoration:const  BoxDecoration(
              color: Colors.blue
            ),
          
         child:  Center(
           child: customListTile(icon:  Icons.access_time,
            title: 'Setting',
            color: Colors.white,),
         )),
         customListTile(icon: Icons.alarm,
          title:"Clock Type"
          ),
          RadioListTile(
            activeColor: Colors.blue,
            title:const Text("analog clock",
            style: TextStyle(
              fontSize: 20
            ),),
            value: "analog clock", groupValue:clockType , onChanged: (value){
            setState(() {
             clockType=value!; 
            });
          }),
           RadioListTile(
            activeColor: Colors.blue,
            title:const Text( "digital clock",
            style: TextStyle(
              fontSize: 20
            ),
            ),
            value: "digital clock", groupValue:clockType , onChanged: (value){
            setState(() {
             clockType=value!; 
            });
          }),
           RadioListTile(
            activeColor: Colors.blue,
            title: const Text("text clock",
            style: TextStyle(
              fontSize: 20
            ),),
            value: "text clock", groupValue:clockType , onChanged: (value){
            setState(() {
             clockType=value!; 
            });
          }),
          customListTile(icon: Icons.format_size,
           title:"Clock Size"),
           Slider(min: 80, max:200,  value:clockSize, onChanged: (value){
            setState(() {
             clockSize= value;
            });
           }),
           customListTile(icon: Icons.palette,
            title:"Clock Color"),
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: clockColors.length,
                itemBuilder: (context,index){
                 selectedColor= clockColor==clockColors[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                       clockColor= clockColors[index];
                      });
                    },
                    child:  Container(
          
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: clockColors[index],
            
            border: Border.all(
              color: selectedColor ? Colors.black : Colors.transparent,
              width: 3,
                  ),
                    ))));
              }),
            )
        ],

      ),
    

     ),
    
    
     body:  SingleChildScrollView(
      
       child: Center(
         child: Column(
        
         
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Center(
           child: Text(
             "${currentTime.day}/${currentTime.month}/${currentTime.year}",
             style: TextStyle(fontSize: 20),
           ),
         ),
         if(clockType=="analog clock")
         
           
             SizedBox(
              width: clockSize*1.5,
              height: clockSize*1.5,
               child: AnalogClock(
                       decoration: BoxDecoration(
                border: Border.all(width: 2.0, color:clockColor),
                color: Colors.transparent,
                shape: BoxShape.circle),
                       
                       isLive: true,
                       hourHandColor:clockColor,
                       minuteHandColor: clockColor,
                       showSecondHand: true,
                       numberColor: clockColor,
                       showNumbers: true,
                       showAllNumbers:true,
                       textScaleFactor: 1.4,
                       showTicks: true,
                       showDigitalClock: false,
                       datetime: currentTime,
                       ),
             ),
             if(clockType=="digital clock")
           
         Text(
           "${currentTime.hour.toString().padLeft(2, '0')}:"
           "${currentTime.minute.toString().padLeft(2, '0')}:"
           "${currentTime.second.toString().padLeft(2, '0')}",
           style: TextStyle(
             fontSize: clockSize /2,   // 👈 ده اللي بيتغير مع الـ Slider
             fontWeight: FontWeight.bold,
             color: clockColor,
           ),
         ),
         
         
         if(clockType=="text clock")
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SevenSegmentDisplay(
               size:(clockSize / 25).clamp(6.0, 20.0),
               characterSpacing: 10.0,
               backgroundColor: Colors.transparent,
               segmentStyle: HexSegmentStyle(
                 enabledColor: clockColor,
                 disabledColor: Colors.transparent,
               ), value:currentTime.hour.toString(),
                      ),
           SevenSegmentDisplay(
           size: (clockSize / 25).clamp(6.0, 20.0),
           characterSpacing: 10.0,
           backgroundColor: Colors.transparent,
           segmentStyle: HexSegmentStyle(
             enabledColor: clockColor,
             disabledColor: Colors.transparent,
           ), value:":",
                  ),
             SevenSegmentDisplay(
             size: (clockSize / 25).clamp(6.0, 20.0),
             characterSpacing: 10.0,
             backgroundColor: Colors.transparent,
             segmentStyle: HexSegmentStyle(
               enabledColor: clockColor,
               disabledColor: Colors.transparent,
             ), value:currentTime.minute.toString(),
                    ),
             SevenSegmentDisplay(
             size: (clockSize / 25).clamp(6.0, 20.0),
             characterSpacing: 10.0,
             backgroundColor: Colors.transparent,
             segmentStyle: HexSegmentStyle(
               enabledColor: clockColor,
               disabledColor: Colors.transparent,
             ), value:":",
                    ),
             SevenSegmentDisplay(
             size:  (clockSize / 25).clamp(6.0, 20.0),
             characterSpacing: 10.0,
             backgroundColor: Colors.transparent,
             segmentStyle: HexSegmentStyle(
               enabledColor: clockColor,
               disabledColor: Colors.transparent,
             ), value:currentTime.second.toString(),
                    ),
            ],
           ),
            
          ],
         ),
       ),
     ),
    
    );
  }
}

// ignore: must_be_immutable
class customListTile extends StatelessWidget {
    customListTile({
    super.key, required this.icon, required this.title, this.color,
  });
  final IconData icon;
  final String title;
  Color? color =Colors.black;
  @override
  Widget build(BuildContext context) {
    return ListTile(
       leading: Icon(icon,
       size: 28,
       color: color,
       ),
       title: Text(title,style: TextStyle(
         color:color,
         fontSize: 22
       ),),
     );
  }
}