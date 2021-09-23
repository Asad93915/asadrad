import 'package:flutter/material.dart';
import 'my_shared_preferences.dart';
import 'login.dart';
import 'profile.dart';
class MainFileSp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainFileSpState();
  }
}

class MainFileSpState extends State<MainFileSp> {
  // This widget is the root of your application.

  bool isLoggedIn = false;

  MainFileSpState() {
    MySharedPreferences.instance
        .getBooleanValue("loggedin")
        .then((value) => setState(() {
      isLoggedIn = value;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: isLoggedIn ? Profile() : Login());
  }
}