// flutter_webview_plugin: ^0.4.0

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:signin/web_view_flutter_community_pkg.dart';

const kAndroidUserAgent =
    'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36';

String selectedUrl = 'https://www.cricbuzz.com/cricket-match/live-scores';
// String selectedUrl = 'https://www.google.com/search?q=webview+in+flutter&rlz=1C1CHBD_enPK859PK859&sxsrf=ALeKk0354ClegVW1lT00ygUae5cYC_Vw2w%3A1625467437000&ei=LKriYPW-PPKo8gKev6mQDQ&oq=webview+in+flutter&gs_lcp=Cgdnd3Mtd2l6EAMyBAgjECcyAggAMgIIADICCAAyAggAMgYIABAWEB4yBggAEBYQHjIGCAAQFhAeMgYIABAWEB4yBggAEBYQHjoHCCMQsAMQJzoHCAAQRxCwAzoHCAAQsAMQQzoHCCMQsAIQJzoECAAQDToGCAAQDRAeOggIABANEAUQHjoICAAQCBANEB5KBAhBGABQr09YtVVg8F1oAnACeACAAeMBiAHkBpIBAzItNJgBAKABAaoBB2d3cy13aXrIAQrAAQE&sclient=gws-wiz&ved=0ahUKEwj1hLSJqsvxAhVylFwKHZ5fCtIQ4dUDCA4&uact=5';

// ignore: prefer_collection_literals
final Set<JavascriptChannel> jsChannels = [
  JavascriptChannel(
      name: 'Print',
      onMessageReceived: (JavascriptMessage message) {
        print(message.message);
      }),
].toSet();

// class WebViewFltterCommunity extends StatelessWidget {
//   final flutterWebViewPlugin = FlutterWebviewPlugin();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter WebView Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       routes: {
//         '/': (_) => const MyHomePage(title: 'Flutter WebView Demo'),
//         '/widget': (_) {
//           return WebviewScaffold(
//
//             url: selectedUrl,
//
//             mediaPlaybackRequiresUserGesture: false,
//             appBar: AppBar(
//               title: const Text('Widget WebView'),
//             ),
//             withZoom: true,
//             withLocalStorage: true,
//             withJavascript: true,
//             hidden: true,
//             initialChild: Container(
//               color: Colors.blue,
//               child: const Center(
//                 child: Text('Waiting.....'),
//               ),
//             ),
//             bottomNavigationBar: BottomAppBar(
//               child: Row(
//                 children: <Widget>[
//                   IconButton(
//                     icon: const Icon(Icons.arrow_back_ios),
//                     onPressed: () {
//                       flutterWebViewPlugin.goBack();
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.arrow_forward_ios),
//                     onPressed: () {
//                       flutterWebViewPlugin.goForward();
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.autorenew),
//                     onPressed: () {
//                       flutterWebViewPlugin.reload();
//                     },
//                   ),
//
//                 ],
//               ),
//
//             ),
//           );
//
//         },
//       },
//     );
//   }
// }
//
//
//
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key key,  this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   // Instance of WebView plugin
//   final flutterWebViewPlugin = FlutterWebviewPlugin();
//
//   // On destroy stream
//  StreamSubscription _onDestroy;
//
//   // On urlChanged stream
//   StreamSubscription<String> _onUrlChanged;
//
//   // On urlChanged stream
//   StreamSubscription<WebViewStateChanged> _onStateChanged;
//
//   StreamSubscription<WebViewHttpError> _onHttpError;
//
//   StreamSubscription<double> _onProgressChanged;
//
//   StreamSubscription<double> _onScrollYChanged;
//
//   StreamSubscription<double> _onScrollXChanged;
//
//   final _urlCtrl = TextEditingController(text: selectedUrl);
//
//   final _codeCtrl = TextEditingController(text: 'window.navigator.userAgent');
//
//   final _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   final _history = [];
//
//   @override
//   void initState() {
//     super.initState();
//
//     flutterWebViewPlugin.close();
//
//     _urlCtrl.addListener(() {
//       selectedUrl = _urlCtrl.text;
//     });
//
//     // Add a listener to on destroy WebView, so you can make came actions.
//     _onDestroy = flutterWebViewPlugin.onDestroy.listen((_) {
//       if (mounted) {
//         // Actions like show a info toast.
//         ScaffoldMessenger.of(context)
//             .showSnackBar(const SnackBar(content: Text('Webview Destroyed')));
//       }
//     });
//
//     // Add a listener to on url changed
//     _onUrlChanged = flutterWebViewPlugin.onUrlChanged.listen((String url) {
//       if (mounted) {
//         setState(() {
//           _history.add('onUrlChanged: $url');
//         });
//       }
//     });
//
//     _onProgressChanged =
//         flutterWebViewPlugin.onProgressChanged.listen((double progress) {
//           if (mounted) {
//             setState(() {
//               _history.add('onProgressChanged: $progress');
//             });
//           }
//         });
//
//     _onScrollYChanged =
//         flutterWebViewPlugin.onScrollYChanged.listen((double y) {
//           if (mounted) {
//             setState(() {
//               _history.add('Scroll in Y Direction: $y');
//             });
//           }
//         });
//
//     _onScrollXChanged =
//         flutterWebViewPlugin.onScrollXChanged.listen((double x) {
//           if (mounted) {
//             setState(() {
//               _history.add('Scroll in X Direction: $x');
//             });
//           }
//         });
//
//     _onStateChanged =
//         flutterWebViewPlugin.onStateChanged.listen((WebViewStateChanged state) {
//           if (mounted) {
//             setState(() {
//               _history.add('onStateChanged: ${state.type} ${state.url}');
//             });
//           }
//         });
//
//     _onHttpError =
//         flutterWebViewPlugin.onHttpError.listen((WebViewHttpError error) {
//           if (mounted) {
//             setState(() {
//               _history.add('onHttpError: ${error.code} ${error.url}');
//
//               // ScaffoldMessenger.of(context)
//               //     .showSnackBar(const SnackBar(content: Align
//               //   (
//               //   alignment: Alignment.topCenter,
//               //     child: Center(child: Text('Webview Not Available')))));
//             });
//           }
//         });
//   }
//
//   @override
//   void dispose() {
//     // Every listener should be canceled, the same should be done with this stream.
//     _onDestroy.cancel();
//     _onUrlChanged.cancel();
//     _onStateChanged.cancel();
//     _onHttpError.cancel();
//     _onProgressChanged.cancel();
//     _onScrollXChanged.cancel();
//     _onScrollYChanged.cancel();
//
//     flutterWebViewPlugin.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         title: const Text('Plugin example app'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(24.0),
//               child: TextField(controller: _urlCtrl),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 flutterWebViewPlugin.launch(
//                   selectedUrl,
//                   rect: Rect.fromLTWH(
//                       0.0, 0.0, MediaQuery.of(context).size.width, 300.0),
//                   userAgent: kAndroidUserAgent,
//                   invalidUrlRegex:
//                   r'^(https).+(twitter)', // prevent redirecting to twitter when user click on its icon in flutter website
//                 );
//               },
//               child: const Text('Open Webview (rect)'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 flutterWebViewPlugin.launch(selectedUrl, hidden: true);
//               },
//               child: const Text('Open "hidden" Webview'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 flutterWebViewPlugin.launch(selectedUrl,);
//               },
//               child: const Text('Open Fullscreen Webview',)
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).pushNamed('/widget');
//               },
//               child: const Text('Open widget webview'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(24.0),
//               child: TextField(controller: _codeCtrl),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 final future =
//                 flutterWebViewPlugin.evalJavascript(_codeCtrl.text);
//                 future.then((String result) {
//                   setState(() {
//                     _history.add('eval: $result');
//                   });
//                 });
//               },
//               child: const Text('Eval some javascript'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 final future = flutterWebViewPlugin
//                     .evalJavascript('alert("Hello World");');
//                 future.then((String result) {
//                   setState(() {
//                     _history.add('eval: $result');
//                   });
//                 });
//               },
//               child: const Text('Eval javascript alert()'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _history.clear();
//                 });
//                 flutterWebViewPlugin.close();
//               },
//               child: const Text('Close'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 flutterWebViewPlugin.getCookies().then((m) {
//                   setState(() {
//                     _history.add('cookies: $m');
//                   });
//                 });
//               },
//               child: const Text('Cookies'),
//             ),
//             Text(_history.join('\n'))
//           ],
//         ),
//       ),
//     );
//   }
// }
//

class WebViewCommunityPkg extends StatefulWidget {
  @override
  _WebViewCommunityPkgState createState() => _WebViewCommunityPkgState();
}

class _WebViewCommunityPkgState extends State<WebViewCommunityPkg> {
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/widget',
      routes: {
        '/': (_) => SizedBox(
              height: 50.0,
              child: ValidationOfConnection(),
            ),
        '/widget': (_) {
          return WebviewScaffold(
            url: selectedUrl,
            mediaPlaybackRequiresUserGesture: false,
            appBar: AppBar(
              title: const Text('Widget WebView'),
            ),
            withZoom: true,
            withLocalStorage: true,
            withJavascript: true,
            hidden: true,
            initialChild: Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Waiting.....'),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      flutterWebViewPlugin.goBack();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      flutterWebViewPlugin.goForward();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.autorenew),
                    onPressed: () {
                      flutterWebViewPlugin.reload();
                    },
                  ),
                ],
              ),
            ),
          );
        },
      },
    );
  }
}

bool connectionStatus = true;

Future check() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      connectionStatus = true;
    }
  } on SocketException catch (_) {
    connectionStatus = false;
  }
}

class ValidationOfConnection extends StatefulWidget {
  @override
  _ValidationOfConnectionState createState() => _ValidationOfConnectionState();
}

class _ValidationOfConnectionState extends State<ValidationOfConnection> {
  DateTime backbuttonpressedTime;

  @override
  Widget build(BuildContext context) {
    // Ali();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 0),
        child: AppBar(
          title: Text(""),
          backgroundColor: Colors.deepPurple,
        ),
      ),
      body: FutureBuilder(
          future: check(), // a previously-obtained Future or null
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (connectionStatus == true) {
              return WillPopScope(
                onWillPop: onWillPop,
                child: WebviewScaffold(
                  // url: selectedUrl,
                  hidden: true,
                  initialChild: Container(
                    child: const Center(
                      child: WebViewww(),
                      // CircularProgressIndicator(
                      //     valueColor:
                      //     AlwaysStoppedAnimation<Color>(Colors.deepPurple)),
                    ),
                  ),
                ),
              );
            } else {
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text('No internet connection !!!',
                        style: TextStyle(
                          // your text
                          fontFamily: 'Aleo',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        )),
                  ),
                  /* RaisedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    color: Color(0xFF673AB7),
                    textColor: Colors.white,
                    child: Text('Refresh'),
                  ), */
                  // your button beneath text
                ],
              ));
            }
          }),
    );
  }

  Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now();

    //ifbackbuttonhasnotbeenpreedOrToasthasbeenclosed
    //Statement 1 Or statement2
    bool backButton = backbuttonpressedTime == null ||
        currentTime.difference(backbuttonpressedTime) > Duration(seconds: 2);
    if (backButton) {
      backbuttonpressedTime = currentTime;
      var Fluttertoast;
      Fluttertoast.showToast(
          msg: "Double tap to exit the app",
          backgroundColor: Colors.deepPurple,
          textColor: Colors.white);
      return false;
    }
    exit(0);
    return true;
  }
}

class WebViewww extends StatefulWidget {
  const WebViewww({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WebViewwwState createState() => _WebViewwwState();
}

class _WebViewwwState extends State<WebViewww> {
  // Instance of WebView plugin
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  // On destroy stream
  StreamSubscription _onDestroy;

  // On urlChanged stream
  StreamSubscription<String> _onUrlChanged;

  // On urlChanged stream
  StreamSubscription<WebViewStateChanged> _onStateChanged;

  StreamSubscription<WebViewHttpError> _onHttpError;

  StreamSubscription<double> _onProgressChanged;

  StreamSubscription<double> _onScrollYChanged;

  StreamSubscription<double> _onScrollXChanged;

  final _urlCtrl = TextEditingController(text: selectedUrl);

  final _codeCtrl = TextEditingController(text: 'window.navigator.userAgent');

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _history = [];

  @override
  void initState() {
    super.initState();

    flutterWebViewPlugin.close();

    _urlCtrl.addListener(() {
      selectedUrl = _urlCtrl.text;
    });

    // Add a listener to on destroy WebView, so you can make came actions.
    _onDestroy = flutterWebViewPlugin.onDestroy.listen((_) {
      if (mounted) {
        // Actions like show a info toast.
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Webview Destroyed')));
      }
    });

    // Add a listener to on url changed
    _onUrlChanged = flutterWebViewPlugin.onUrlChanged.listen((String url) {
      if (mounted) {
        setState(() {
          _history.add('onUrlChanged: $url');
        });
      }
    });

    _onProgressChanged =
        flutterWebViewPlugin.onProgressChanged.listen((double progress) {
      if (mounted) {
        setState(() {
          _history.add('onProgressChanged: $progress');
        });
      }
    });

    _onScrollYChanged =
        flutterWebViewPlugin.onScrollYChanged.listen((double y) {
      if (mounted) {
        setState(() {
          _history.add('Scroll in Y Direction: $y');
        });
      }
    });

    _onScrollXChanged =
        flutterWebViewPlugin.onScrollXChanged.listen((double x) {
      if (mounted) {
        setState(() {
          _history.add('Scroll in X Direction: $x');
        });
      }
    });

    _onStateChanged =
        flutterWebViewPlugin.onStateChanged.listen((WebViewStateChanged state) {
      if (mounted) {
        setState(() {
          _history.add('onStateChanged: ${state.type} ${state.url}');
        });
      }
    });

    _onHttpError =
        flutterWebViewPlugin.onHttpError.listen((WebViewHttpError error) {
      if (mounted) {
        setState(() {
          _history.add('onHttpError: ${error.code} ${error.url}');
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.white,
              content: Center(
                  child: Text(
                'WebPage Not Available',
                style: TextStyle(color: Colors.black),
              ))));
        });
      }
    });
  }

  @override
  void dispose() {
    // Every listener should be canceled, the same should be done with this stream.
    _onDestroy.cancel();
    _onUrlChanged.cancel();
    _onStateChanged.cancel();
    _onHttpError.cancel();
    _onProgressChanged.cancel();
    _onScrollXChanged.cancel();
    _onScrollYChanged.cancel();

    flutterWebViewPlugin.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24.0),
              // child: TextField(controller: _urlCtrl),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     flutterWebViewPlugin.launch(
            //       selectedUrl,
            //       rect: Rect.fromLTWH(
            //           0.0, 0.0, MediaQuery.of(context).size.width, 300.0),
            //       // userAgent: kAndroidUserAgent,
            //       invalidUrlRegex:
            //       r'^(https).+(twitter)', // prevent redirecting to twitter when user click on its icon in flutter website
            //     );
            //   },
            //   child: const Text('Open Webview (rect)'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     flutterWebViewPlugin.launch(selectedUrl, );
            //   },
            //   child: const Text('Open "hidden" Webview'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //
            //     flutterWebViewPlugin.launch(selectedUrl,);
            //   },
            //   child: const Text(
            //
            //       'Open Fullscreen Webview'),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 200.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/widget');
                },
                child: const Text('Open FullScreen webview'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(24.0),
              // child: TextField(controller: _codeCtrl),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     final future =
            //     flutterWebViewPlugin.evalJavascript(_codeCtrl.text);
            //     future.then((String result) {
            //       setState(() {
            //         _history.add('eval: $result');
            //       });
            //     });
            //   },
            //   child: const Text('Eval some javascript'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     final future = flutterWebViewPlugin
            //         .evalJavascript('alert("Hello World");');
            //     future.then((String result) {
            //       setState(() {
            //         _history.add('eval: $result');
            //       });
            //     });
            //   },
            //   child: const Text('Eval javascript alert()'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     setState(() {
            //       _history.clear();
            //     });
            //     flutterWebViewPlugin.close();
            //   },
            //   child: const Text('Close'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     flutterWebViewPlugin.getCookies().then((m) {
            //       setState(() {
            //         _history.add('cookies: $m');
            //       });
            //     });
            //   },
            //   child: const Text('Cookies'),
            // ),
            // Text(_history.join('\n'))
          ],
        ),
      ),
    );
  }
}
