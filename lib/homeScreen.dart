import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginScreen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text("Home"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async{
            var sharedPref = await SharedPreferences.getInstance();
            sharedPref.setBool(SplashScreenState.IS_LOGIN, false);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));


          },
          child: const Text("Logout"),
        ),
      ),
    );
  }
}
