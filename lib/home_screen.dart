import 'package:flutter/material.dart';
import 'package:signin/main_drwaer.dart';
// import 'package:signin/main_drwaer.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  String text = "Initial Text";
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'Images/evac.png',
              height: 150,
              width: 150,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          //border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      //padding: const EdgeInsets.only(left:8.0),
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          hintText: 'password',
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            ButtonTheme(
              minWidth: 300.0,
              buttonColor: Colors.orangeAccent,
              height: 30.0,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                  print('Menu Icon pressed');
                },
                child: Text("Login"),
              ),
            ),

Row(
    children: [
      Checkbox(

        value: value,
        onChanged: (bool newValue) {
          setState(() {
            value = newValue;
          });
        },
      ),
    ],
),
            Row(
              children: [
                Text("ForgetPassword"),
                Checkbox(
                  value: value,
                  onChanged: (bool newValue) {
                    setState(() {
                      value = newValue;
                    });
                  },
                ),
                Container(
                  child: Text(
                    "SavePassword",
                  ),
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                text: 'Do not have account ',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(text: 'normal', style: TextStyle(fontWeight: FontWeight.normal)),
                  TextSpan(text: ' SignUp!'),
                ],
              ),
            ),

            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Sign up',
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 18)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  // drawer: Drawer(),
  // drawer: Drawer(
  // child: MainDrawer(),
  // ),
}
//
