import 'dart:convert';

import 'package:linkedin/studentmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void>addStudent(Studentmodel student)async{
  final SharedPreferences prefs=await SharedPreferences.getInstance();
  final List<String> Student=prefs.getStringList("StudentList")??[];
  final json=jsonEncode(student.toJson());
  Student.add(json);

}