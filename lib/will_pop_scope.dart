import 'package:flutter/material.dart';

//
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   GlobalKey<NavigatorState> _key = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: WillPopScope(
//           onWillPop: () async {
//             if (_key.currentState.canPop()) {
//               _key.currentState.pop();
//               return false;
//             }
//             return true;
//           },
//           child: Column(
//             children: <Widget>[
//               Expanded(
//                 child: Navigator(
//                   key: _key,
//                   onGenerateRoute: (RouteSettings settings) =>
//                       MaterialPageRoute(builder: (context) {
//                         return OnePage();
//                       }),
//                 ),
//               ),
//               Container(
//                 height: 50,
//                 color: Colors.blue,
//                 alignment: Alignment.center,
//                 child: Text('bottom Bar'),
//               )
//             ],
//           )),
//     );
//   }
// }
//
//
// class OnePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           child: RaisedButton(
//             child: Text('Go to the next page'),
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) {
//                 return TwoPage();
//               }));
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class TwoPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           child: Text('This is the second page'),
//         ),
//       ),
//     );
//   }
// }

class WillPop extends StatefulWidget {
  final String title;

  const WillPop({Key key, this.title}) : super(key: key);

  @override
  _WillPopState createState() => _WillPopState();
}

class _WillPopState extends State<WillPop> {
  int _counter = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("Do you really want to exit?"),
              actions: [
                ElevatedButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: Text("N0")),
                ElevatedButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: Text("YES"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Will Pop Scope"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You have pushed the button this many times"),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline1,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
