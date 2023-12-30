import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: Container(
          child: Text("$count",style: TextStyle(fontSize: 80,fontFamily: 'Rubix'),)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black54,
        shape: CircleBorder(),
        child:Icon(Icons.add,size: 35,color: Colors.white70),
        onPressed: (){
        setState(() {
          count++;
        });
      },
      ),


    );
  }
}
