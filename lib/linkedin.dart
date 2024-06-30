import 'package:flutter/material.dart';
import 'package:linkedin/function.dart';
import 'package:linkedin/functionbool.dart';
import 'package:linkedin/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class linkedin extends StatefulWidget {
  const linkedin({super.key});

  @override
  State<linkedin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<linkedin> {
  @override
  Widget build(BuildContext context) {
    String harcodedUsername="user";
    String harcodedPassword="password";
    final TextEditingController usernameControler=TextEditingController();
    final TextEditingController passwordController=TextEditingController();
    return Scaffold(
        appBar: AppBar(

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/linkedin.png" , width: 150,
            height: 70,),
            Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: TextField(
              controller: usernameControler,
              decoration: InputDecoration(
                hintText: "Username",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: 20),
            child: MaterialButton(
              color: Colors.blue,
              onPressed:()async{
                if(harcodedUsername==usernameControler.text && harcodedPassword==passwordController.text){
                  await storingDataToBool(true);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Home(),));
                  
                 // print("Loged in Success");
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 3),
                  content: Row(
                    children:const [
                      Icon(Icons.warning),
                    Text("Invalid Credentials !"),
                    ],
                  ),),);
                }
               // await storingDataToPref();
               // await retreavingString();
               // await DeletingString();
                //await retrievingData();
           // print(storingDataToPref);
                //await retrievingData();
                //print(retrievingData);
                
                //await Future.delayed(Duration(seconds: 2));
                //Navigator.push(context, MaterialPageRoute(builder: (context) =>Home(),));

              },
              child: Text("Login",
              style: TextStyle(color: Colors.white),),
               ),
          ),
          
            

          ],
          ),
    );
  }
 /* Future <void> storingDatatoPreff(String a,String b) async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("User", a.toString());
  prefs.setString("Pass", b.toString());
  prefs.setString("Go", "1");
}*/
}