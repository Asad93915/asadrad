import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin/extended_image.dart';
import 'package:signin/provider_screens/task/second_scren.dart';
import 'package:signin/providers/counter_provider.dart';
import 'package:signin/utilities/utils.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    print('FirstScreen.build() calling');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "First Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'You are pushing the Button : ${context.watch<Counter>().count}',
            style: Theme.of(context).textTheme.bodyText2,
          )),
          Count(),
          SizedBox(
            height: 50.0,
          ),
          ElevatedButton(
            onPressed: () {
              context.read<Counter>().increment();
            },
            child: Text('Counter',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
          ),
          SizedBox(
            height: 50.0,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Text(
                "Next",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}

class Count extends StatelessWidget {
  Count({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(' ${context.watch<Counter>().count}',
        key: Key('counterState'),
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ));
  }
}

//
// import 'package:flutter/material.dart';
// import 'package:signin/provider_screens/task/second_scren.dart';
//
//
// class FirstScreen extends StatefulWidget {
//   @override
//   _FirstScreenState createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//         Center(
//           child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
//                   // Navigator.push(context,
//                   //     MaterialPageRoute(builder: (context) => SecondScreen()));
//                 },
//                 child: Text(
//                   "Next",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 )),
//         )
//         ],
//       ),
//     );
//   }
// }
