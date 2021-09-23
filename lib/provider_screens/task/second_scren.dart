

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin/provider_screens/task/third_screen.dart';
import 'package:signin/providers/counter_provider.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Second Screen",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'You have pushed this button many times : ${context.watch<Counter>().count}',
            style: Theme.of(context).textTheme.bodyText2,
          )),
          Count(),
          SizedBox(
            height: 50.0,
          ),
          ElevatedButton(
            onPressed: () => context.read<Counter>().increment(),
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
                  MaterialPageRoute(builder: (context) => ThirdScreen()));
            },
            child: SizedBox(
                width: 80.0,
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Back",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
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
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ));
  }
}
// import 'package:flutter/material.dart';
//
//
// class SecondScreen extends StatefulWidget {
//   @override
//   _SecondScreenState createState() => _SecondScreenState();
// }
//
// class _SecondScreenState extends State<SecondScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(child: Text("Asadddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",)),
//         ],
//       ),
//     );
//   }
// }
