import 'dart:async';
import 'package:calculatorapp/homeScreen.dart';
import 'package:flutter/material.dart';



class Splash extends StatefulWidget {
  static const String id = 'splash';
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    
    super.initState();
    Timer( const Duration(seconds: 3), () { 

      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => const HomeScreen()));

    });
  
  }
  @override
  Widget build(BuildContext context) {
 return Scaffold(
  backgroundColor:Colors.teal,
  body:Container(

 decoration:  const BoxDecoration(
   color: Colors.transparent,
  image: DecorationImage(
    image: AssetImage('assets/logo1.png'),
  
  )
 ),
  ),
);
  }
}