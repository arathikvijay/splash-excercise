//import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

Future <void> storingDataToBool(bool isloggedin)async{
  final SharedPreferences prefs=await SharedPreferences.getInstance();
  prefs.setBool("isloggedin", isloggedin); 

}
Future<bool> gettingDataBool() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
   bool? data = prefs.getBool("isloggedin");
  if(data == null)
  {
    data=false;
  }
  return data;
}


Future<void> deletingString()async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove("isloggedin");
}