import 'package:flutter/material.dart';
import 'package:linkedin/functionbool.dart';
import 'package:linkedin/home.dart';
import 'package:linkedin/home1.dart';
//import 'package:linkedin/home1.dart';
import 'package:linkedin/linkedin.dart';
//import 'package:linkedin/linkedinhomescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    print("init state initalised");
    navigateToNextScreen();
    
  }
  void navigateToNextScreen() async{
    await Future.delayed(Duration(seconds: 2));
    final bool isloggedin=await gettingDataBool();
    if(isloggedin){
      Navigator.push(context, MaterialPageRoute(builder:(context) => const home1(),));
    }else{
      Navigator.push(context,MaterialPageRoute(builder: (context)=>linkedin(),));
    }
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Image.asset("asset/linkedin.png")
        ],
      )
    );

  }
  
}