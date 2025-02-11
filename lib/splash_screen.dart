import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTimer() async
  {
    Timer(Duration(seconds: 5), (){

      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/recipe_logo.png",
            height: 200,
            width: 200,),

            SizedBox(height: 10,),

            Text("My Recipe",style: GoogleFonts.acme(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),),

            SizedBox(height: 10,),

            CircularProgressIndicator(
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}
