import 'package:flutter/material.dart';
import 'package:linkedin/functionbool.dart';
import 'package:linkedin/studentList.dart';
import 'package:linkedin/studentmodel.dart';

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<home1> {
  List<Studentmodel>studentList=[];
  final TextEditingController firstNameController=TextEditingController();
  final TextEditingController secondNameController=TextEditingController();
  final TextEditingController addtessController=TextEditingController();
  final TextEditingController mobileController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
       // automaticallyImplyLeading: false,
        title: Center(child: const Text("Student Registration")),
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: TextField(
              controller: firstNameController,
              decoration: InputDecoration(
                hintText: "First Name",
                
                border: OutlineInputBorder()
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: secondNameController,
              decoration: InputDecoration(
                hintText: "Second Name",
                border: OutlineInputBorder()
              ),
            ),
          ),
           Padding(
            padding:  EdgeInsets.all(8.0),
            child: TextField(
              controller: addtessController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Address",
                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: TextField(
              controller: mobileController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Mobile Number",
                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: ()async{
            Studentmodel student=Studentmodel(firstNameController.text,secondNameController.text,addtessController.text,mobileController.text);
            //studentList.add(student);
            studentTask(student);
            print(student);
            
              setState(() {
                firstNameController.clear();
                secondNameController.clear();
                addtessController.clear();
                mobileController.clear();
              });
            //print(student.firstName);
           // print(studentList);

            }, child: const Text("Register")),
            
          ),
          /*Expanded(child: ListView.builder(
            itemCount:studentList.length,
            itemBuilder: (context,index){
            return ListTile(
              title: Text(studentList[index].firstName + " " + studentList[index].secondName),
              subtitle: Text(studentList[index].mobileNumber),

            );
          },
          ),
          ),*/
          ElevatedButton(onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => const studentView(),));
          }, child: const Text("View Students"),)
          

        ],
      ),
    );
  }
}