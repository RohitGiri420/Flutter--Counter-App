import 'dart:async';

import 'package:counterapp/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: Container(

          child: LottieBuilder.asset('asset/lottie/Animation.json'),
        ),
      ),
    );
  }
}

