//import 'dart:ffi';

import 'dart:convert';

import 'package:linkedin/studentmodel.dart';
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
/*Future <void> studentTask(Studentmodel student)async{
  final SharedPreferences prefs=await SharedPreferences.getInstance();
  final List<String> students=prefs.getStringList("studentTask") ?? [];
 students.add(jsonEncode(student.toJson()));
 await prefs.setStringList("studentTask",students);

}*/
Future <void> studentTask(Studentmodel student)async{
final prefs=await SharedPreferences.getInstance();
String jsonString=jsonEncode(student.toJson());
print(jsonString);
await prefs.setString('studentTask',jsonString);
}
Future <Studentmodel?>getStudent()async{
  final prefs=await SharedPreferences.getInstance();
  String? jsonString=prefs.getString('studentTask');
  if(jsonString !=null){
    Map<String,dynamic>jsonMap=jsonDecode(jsonString);
    return Studentmodel.fromJson(jsonMap);

  }
  return null;
}
/*Future<void> studentTask(List<Studentmodel> students) async {
  final prefs = await SharedPreferences.getInstance();
  List<String> jsonStringList = students.map((student) => jsonEncode(student.toJson())).toList();
  await prefs.setStringList('studentTask', jsonStringList);
}
Future<List<Studentmodel>?> getStudent() async {
  final prefs = await SharedPreferences.getInstance();
  List<String>? jsonStringList = prefs.getStringList('studentTask');
  if (jsonStringList != null) {
    return jsonStringList.map((jsonString) {
      Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      return Studentmodel.fromJson(jsonMap);
    }).toList();
  }
  return null;
}*/