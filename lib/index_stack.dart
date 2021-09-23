import 'package:flutter/material.dart';

class IndexStack extends StatefulWidget {
  @override
  _IndexStackState createState() => _IndexStackState();
}

class _IndexStackState extends State<IndexStack> {
  int i = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Index Stack'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          IndexedStack(
            index: i,
            children: [
              Container(
                width: 200.0,
                height: 200.0,
                color: Colors.amber,
                alignment: Alignment.bottomLeft,
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 100),
                ),
              ),
              // Index = 1
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 120),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.purple,
                  alignment: Alignment.bottomRight,
                  child: Text('1', style: TextStyle(fontSize: 100)),
                ),
              ),
              // Index = 2

              Padding(
                padding: const EdgeInsets.only(top: 160.0),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text('2', style: TextStyle(fontSize: 100)),
                ),
              )
            ],
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh_rounded),
        onPressed: () {
          setState(() {
            if (i == 2) {
              i = 0;
            } else {
              i = i + 1;
            }
          });
        },
      ),
    );
  }
}

// class IndexStack extends StatefulWidget {
//
//   @override
//   _IndexStackState createState() => _IndexStackState();
// }
//
// class _IndexStackState extends State<IndexStack> {
//   int i=0;
//   final widget_list=[
//     Container(
//       color: Colors.white,
//       child: Center(child: Text('page1',style: TextStyle(fontSize: 20),)),
//     ),
//     Container(
//       color: Colors.blue,
//       child: Center(child: Text('page2',style: TextStyle(fontSize: 20,color: Colors.black),)),
//     ),
//     Container(
//       color: Colors.red,
//       child: Center(child: Text('page3',style: TextStyle(fontSize: 20,color: Colors.black),)),
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Index Stack'),
//       ),
//
//     body: Column(
//        children: [
//          Expanded(
//            child: IndexedStack(
//              index: i,
//              children: widget_list,
//     )
//     ),
//     ),
//     );
//
//   }
// }
