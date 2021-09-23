import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin/providers/counter_provider.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Third Screen",
          style: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'You have pushed this button many times:  ${context.watch<Counter>().count}',
            style: Theme.of(context).textTheme.bodyText2,
          )),
          Count(),
          SizedBox(
            height: 40.0,
          ),
          ElevatedButton(
              onPressed: () => context.read<Counter>().increment(),
              child: Text(
                "Counter",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              )),
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

// class Count extends StatelessWidget{
//   Count({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Text(' ${context.watch<Counter>().count}',
//         key: Key('counterState'),style: TextStyle(color: Colors.black,fontSize: 18.0,));
//   }
// }
class Count extends StatefulWidget {
  Count({Key key}) : super(key: key);

  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      key: Key('counterState'),
      style: TextStyle(
          color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold),
    );
  }
}
