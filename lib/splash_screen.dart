import 'dart:async';

import'package:flutter/material.dart';
import 'package:flutter_shared_preferences/loginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homeScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const String IS_LOGIN = "login";

  @override
  void initState() {
    super.initState();

    loginOrHome();


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/cockatail.jpeg"),fit: BoxFit.fill)
          ),
        ),
      ),
    );
  }

  void loginOrHome() async {

    var sPref = await SharedPreferences.getInstance();
    var isLoggedIn = sPref.getBool(IS_LOGIN);

    Timer(Duration(seconds: 3), () {

      if(isLoggedIn != null) {
        if (isLoggedIn) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomeScreen()));
        } else {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>LoginScreen()));
        }
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>LoginScreen()));
      }

    });


    }


  }


