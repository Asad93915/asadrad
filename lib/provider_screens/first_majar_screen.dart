import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import "package:provider/providers/counter_provider.dart";
import 'package:signin/providers/counter_provider.dart';


class ProviderFirst extends StatefulWidget {
  @override
  _ProviderFirstState createState() => _ProviderFirstState();
}

class _ProviderFirstState extends State<ProviderFirst> {
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }
  //
  //
  // void _decrementCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Example",style: Theme.of(context).textTheme.bodyText2,),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed this button many times : ${context.watch<Counter>().count}',style: Theme.of(context).textTheme.bodyText2,),
            Count(),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: Key('decrement'),
              // onPressed:_decrementCounter,
              onPressed: () => context.read<Counter>().decrement(),
      tooltip: 'Decrement',
      child: Icon(Icons.remove),
          ),
          SizedBox(width: 10.0,),

          FloatingActionButton(
            key: Key('Reset'),
            // onPressed:_incrementCounter,
            onPressed:() => context.read<Counter>().reset(),
            tooltip: 'reset',
            child: Icon(Icons.exposure_zero),
          ),
          SizedBox(width: 10.0,),

          FloatingActionButton(
            key: Key('Increment'),
            // onPressed:_incrementCounter,
            onPressed:() => context.read<Counter>().increment(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),

        ],

      ),
    );
  }
}

class Count extends StatelessWidget{
  Count({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(' ${context.watch<Counter>().count}',
    key: Key('counterState'),style: Theme.of(context).textTheme.bodyText2);
  }
}

