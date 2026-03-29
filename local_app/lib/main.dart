import 'package:flutter/material.dart';
import 'package:local_app/database/cach_helper.dart';
import 'package:local_app/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CachHelper.initial();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      
    );
  }
}


