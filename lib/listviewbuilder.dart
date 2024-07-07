import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cvbnj"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
        
      return ListTile(
        
        leading: Icon(Icons.search),
        title: Text("hello"),
      );
      },)
    );
  }
}