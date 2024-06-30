import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:linkedin/functionbool.dart';
import 'package:linkedin/linkedin.dart';
import 'package:linkedin/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      
       Column(
        mainAxisAlignment: MainAxisAlignment.center,

       
        children: [
         
          Padding(
            padding: EdgeInsets.only(
              left: 200,
              right:200

            ),
           
            child: Text("HomeScren"),

          ),
       
        ElevatedButton(onPressed: () async{
          await storingDataToBool(false);
          Navigator.push(context, MaterialPageRoute(builder: (context)=>linkedin(),));


        }, child: Text("Logout")),
          
        ],
        
        
      ),
      
      
    );
  }
}



