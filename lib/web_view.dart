//webview_flutter: ^2.0.9

import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {


  Completer<WebViewController> _controller=Completer<WebViewController>();

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
    return Scaffold(

      body:  WillPopScope(
        onWillPop: _onBackPressed,

        child: WebView(

          initialUrl: 'https://www.cricbuzz.com/cricket-match/live-scores',
          javascriptMode: JavascriptMode. unrestricted,
          onWebViewCreated: (WebViewController controller){
            _controller.complete(controller);

          }
        ),
      ),
      floatingActionButton: _bookMarkButton(),
    );

  }
  _bookMarkButton(){
    return FutureBuilder<WebViewController>(
      future: _controller.future,
      builder: (BuildContext context, AsyncSnapshot<WebViewController>controller){
        if(controller.hasData){
          return FloatingActionButton(
              onPressed: () async{
                var url=await controller.data.currentUrl();
                // ignore: deprecated_member_use
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                        'Current url is: $url',
                        style: TextStyle(fontSize: 20),
                      )),
                );
              },
            child: Icon(Icons.favorite),
          );
        }
      }
    );
  }
}
//
//
// // import 'package:flutter/material.dart';
// // import 'package:url_launcher/url_launcher.dart';
// // import 'package:webview_flutter/webview_flutter.dart';
// //
// // class Testing extends StatefulWidget {
// //   @override
// //   _TestingState createState() => _TestingState();
// // }
// //
// // class _TestingState extends State<Testing> {
// //   // _launchURL(url) async {
// //   //
// //   //   if (await canLaunch(url)) {
// //   //     await launch(url);
// //   //   } else {
// //   //     throw 'Could not launch $url';
// //   //   }
// //   // }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: WebView(
// //         javascriptMode: JavascriptMode.unrestricted,
// //         initialUrl: 'https://www.cricbuzz.com/cricket-match/live-scores',
// //         //
// //         // navigationDelegate: (NavigationRequest request) {
// //         //
// //         //   if(request.url.contains("intent:")) {
// //         //
// //         //     // _launchURL('https://forms.gle/XfNbn1Ph9xFdUaKeA');
// //         //     return NavigationDecision.prevent;
// //         //   }
// //         //   return NavigationDecision.navigate;
// //         // },
// //       ),
// //
// //     );
// //   }
// // }
