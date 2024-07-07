import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/functionbool.dart';
import 'package:linkedin/studentmodel.dart';

class studentView extends StatefulWidget {
  const studentView({super.key});

  @override
  State<studentView> createState() => _studentViewState();
}

class _studentViewState extends State<studentView> {
  Studentmodel? student;
  @override
  void initState(){
super.initState();
_loadStudent();
  }
Future <void> _loadStudent()async{
  Studentmodel? savedStuent=await getStudent();
  setState((){
    student=savedStuent;
  });
}
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student List"),
      ),
      body:student ==null
      ? const Center(child: Text("No data Availalable"))
      :Padding(
        padding:EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name:${student!.firstName}'),
            Text('Address:${student!.address}'),
            Text('Mobile No:${student!.mobileNumber}')
          ],
        ), )

      
    );
  }
}