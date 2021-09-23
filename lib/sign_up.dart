import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
        backgroundColor: Colors.orangeAccent,
      ),
         body: Column(
           children: [

             (Center(child: Padding(
               padding: const EdgeInsets.only(top: 10.0),
               child: Image.asset('Images/asad.jpg',height: 150,width: 150,),
             ))),
             Center(
               child: Container(
        margin: const EdgeInsets.only(top: 10.0),
                 child: Column(
                   children: [
                     Text("Create your Account",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
                   ],
                 ),
               ),
             )


           ],
         )
    );
  }
}
