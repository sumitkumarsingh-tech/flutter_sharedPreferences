import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/splash_screen.dart';


void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:MyApp() ,));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}

