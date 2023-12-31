import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: Container(
          child: Text("$count",style: TextStyle(fontSize: 80,fontFamily: 'Rubix'),)
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(onPressed: (){
            setState(() {
              count--;
            });

          },
           shape: CircleBorder(),
           backgroundColor: Colors.black54 ,
          child: Icon(Icons.exposure_minus_1,size: 35,color: Colors.white70,),),


          FloatingActionButton(
            backgroundColor: Colors.black54,
            shape: CircleBorder(),
            child:Icon(Icons.plus_one,size: 35,color: Colors.white70),
            onPressed: (){
            setState(() {
              count++;
            });
          },
          ),
        ],
      ),
    );
  }
}
