import 'package:flutter/material.dart';
import 'package:calculatorapp/splash.dart';
import 'package:calculatorapp/homeScreen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      initialRoute: Splash.id,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
        routes:{
          Splash.id: (context) => const Splash(),
         HomeScreen.id :(context) => const HomeScreen(),
  

    },
    );
     
  }
}