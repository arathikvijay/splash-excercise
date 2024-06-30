import 'package:flutter/material.dart';
import 'package:linkedin/functionbool.dart';
import 'package:linkedin/home.dart';
import 'package:linkedin/linkedin.dart';

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
      Navigator.push(context, MaterialPageRoute(builder:(context) => const Home(),));
    }else{
      Navigator.push(context,MaterialPageRoute(builder: (context)=>linkedin(),));
    }
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Image.network("https://static.vecteezy.com/system/resources/previews/018/930/480/non_2x/linkedin-logo-linkedin-icon-transparent-free-png.png")
        ],
      )
    );

  }
  
}