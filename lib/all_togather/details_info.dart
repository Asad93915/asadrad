import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:signin/providers/counter_provider.dart';

class DetailsInfo extends StatefulWidget {
  @override
  _DetailsInfoState createState() => _DetailsInfoState();
}

class _DetailsInfoState extends State<DetailsInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Details Info",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40.0,
            decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(15.0,),),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Icon(Icons.person,),
                ),
                Text(
                  "Name",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(height: 15.0,),
          Container(
            height: 40.0,
            decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(15.0,),),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Icon(Icons.person,),
                ),
                Text(
                  "Father Name",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Container(

            width: 100.0,
            decoration: BoxDecoration(
              color: Colors.lightBlue,borderRadius: BorderRadius.circular(20.0)
            ),
            child: FloatingActionButton(
              key: Key('Increment'),
              // onPressed:_incrementCounter,
              onPressed:() => context.read<Counter>().increment(),
              tooltip: 'Increment',
              child: Text("Alert",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(height: 10.0,),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          },
              child: Text("Back",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0),))


        ],
      ),
    );
  }
}

