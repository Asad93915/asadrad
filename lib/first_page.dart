import 'dart:developer';

import 'package:flutter/material.dart';



class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        // child: ElevatedButton(
        //   onPressed: (){
        //     context.read<Counter>().increment();
        //   },
        // ),
        child: Text(
          "My first Page",style: TextStyle(color: Colors.orange,fontSize: 20.0),
        ),
      ),
    );
  }
}
