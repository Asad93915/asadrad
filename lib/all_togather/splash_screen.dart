import 'dart:async';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:signin/all_togather/home.dart';

import '../bottom_sheet_task_exp.dart';

class SplashScreenTask extends StatefulWidget {
  @override
  _SplashScreenTaskState createState() => _SplashScreenTaskState();
}

class _SplashScreenTaskState extends State<SplashScreenTask> {
  @override

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>Home() )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExtendedImage.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPIQ3_kvrJDBEna5SvAxb1K0ieyngeZSuFFQ&usqp=CAU',
            )
          ],
        ),
      ),


    );
  }
}