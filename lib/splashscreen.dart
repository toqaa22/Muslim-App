import 'dart:async';
import 'package:flutter/material.dart';
import 'package:muslim/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
  static const String routeName = 'SplashScreen';
}

class _SplashScreenState extends State<SplashScreen> {
  double opacityLevel = 1.0;
  int splashDuration = 5000; // Duration of the splash screen in milliseconds

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: splashDuration), () {
      setState(() {
        opacityLevel = 0.0; // Fade out the splash screen
      });
      Timer(const Duration(milliseconds: 500), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()), 
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your desired background color
      body: AnimatedOpacity(
        opacity: opacityLevel,
        duration: const Duration(milliseconds: 500), // Duration of the fade animation
        child: Image.asset("assets/images/splashscreen.jpg"),
        ),
      );
  }
}

