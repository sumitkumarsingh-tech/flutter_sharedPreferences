import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/homeScreen.dart';
import 'package:flutter_shared_preferences/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text("Login",),
      ),
      body: Center(
        child: Container(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                   labelText:"Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              const SizedBox(height: 40,),
              SizedBox(
                width: 200,
                height: 48,
                child: ElevatedButton(
                    onPressed: () async{

                      var sharedPref = await SharedPreferences.getInstance();
                      sharedPref.setBool(SplashScreenState.IS_LOGIN, true);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));

                    },
                    child: const Text("Login")
                ),
              )
            ],
          ),
        ),
      ) ,
    );
  }
}
