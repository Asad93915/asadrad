import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin/providers/con_model_clas.dart';

class ColumnClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /// we're using Consumer widget instead of Provider.of().
    /// we've put our Consumer widget as deep as possible in the tree
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Consumers.........................."),

      ),
      body: Column(
        children: [
          Container(
            child: Consumer
            <CountingTheNumber>(
              builder: (context,value, child) {
              // builder: (_,value, _) {

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
        child: Text(
        'You are pushing the Button : ${context.watch<CountingTheNumber>().count}',
        style: TextStyle(fontSize: 18.0),textAlign: TextAlign.justify,
        )),
        SizedBox(height: 20.0,),
        Count(),
        SizedBox(height: 50.0,),

        ElevatedButton(
        onPressed: () {
        context.read<CountingTheNumber>().increment();
        },
        child: Text('Counter',
        style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20.0)),
        ),
        ],
        ),
      );
      }
      ),
      ),
      ]),
    );
  }
  }

class Count extends StatelessWidget {
  Count({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(' ${context.watch<CountingTheNumber>().count}',
        key: Key('counterState'),
        style: TextStyle(
          fontSize: 18.0,

        ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:signin/providers/con_model_clas.dart';
//
// class ColumnClass extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//     /// we're using Consumer widget instead of Provider.of().
//     /// we've put our Consumer widget as deep as possible in the tree
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Consumer!!!!!!!!!!!!!!!!"),
//       ),
//       body: Column(
//         children: [
//           Container(
//             margin: const EdgeInsets.all(
//               5.0,
//             ),
//             child: Consumer<CountingTheNumber>(
//               builder: (context, message, child) {
//                 return Column(
//                   children: [
//                     child,
//                     Text(
//                       '${message.message}',
//                       style: TextStyle(fontSize: 25.0),
//                     ),
//                   ],
//                 );
//               },
//
//               /// building a humongous widget tree
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: [
//                       Text(
//                         'First Row',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.blue,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       Text(
//                         'Second Row',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.red,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Divider(
//                     color: Colors.black,
//                     height: 20,
//                     thickness: 5,
//                     indent: 20,
//                     endIndent: 0,
//                   ),
//                   Column(
//                     children: [
//                       Text(
//                         'First Row',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.red,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       Text(
//                         'Second Row',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 10.0),
//           Container(
//             margin: const EdgeInsets.all(
//               5.0,
//             ),
//             child: Consumer<CountingTheNumber>(
//               builder: (context, message, child) {
//                 return Column(
//                   children: [
//                     FloatingActionButton(
//                       onPressed: () {
//                         message.testMessage();
//                       },
//                       tooltip: 'Increment',
//                       child: Icon(Icons.ac_unit_rounded),
//                     ),
//                     child,
//                   ],
//                 );
//               },
//
//               /// building another humongous widget tree
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: [
//                       Text(
//                         'First Row',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.blue,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       Text(
//                         'Second Row',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.red,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Divider(
//                     color: Colors.black,
//                     height: 20,
//                     thickness: 5,
//                     indent: 20,
//                     endIndent: 0,
//                   ),
//                   Column(
//                     children: [
//                       Text(
//                         'First Row',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.red,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       Text(
//                         'Second Row',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
