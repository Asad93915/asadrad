import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:signin/seed_screens/faqs_screen_with_duration_animation.dart';
import 'package:signin/seed_screens/custom_creditcard_validation_screen.dart';
import 'package:signin/seed_screens/image_crop.dart';
import 'package:signin/seed_screens/subscription_fee_dialogue.dart';
import 'package:signin/seed_screens/welcome_screen_seed4me.dart';
import 'api_task.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:signin/all_togather/splash_screen.dart';
import 'package:signin/conttrollers_textfield_validation.dart';
import 'package:signin/heroo.dart';
import 'package:signin/provider_screens/consumer.dart';
import 'package:signin/provider_screens/task/first_screen.dart';
import 'package:signin/providers/con_model_clas.dart';
import 'package:signin/providers/counter_provider.dart';
import 'package:signin/shared_preferences.dart';
import 'package:signin/shared_preferences_example/sp_file.dart';

import 'package:signin/seed_screens/paypall_card.dart';

import 'custom_fields/custom_textfield_validation_on_registration_screen.dart';
import 'date_picker.dart';
import 'first_page.dart';
import 'news.dart';
import 'second_page.dart';


  //simple
void main()async {
  // runApp(MyApp());


  //Providers
  ///use home:FirstScreen()////////////////////////
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
    ],
    child: MyApp(),
  ));
  //Consumer in Providers
  // runApp(MultiProvider(
  //   providers: [
  //     ChangeNotifierProvider(create: (_) => CountingTheNumber()),
  //   ],
  //   child: MyApp(),
  // ));


  //Hive for storage of data  // home: TodoAppHive(),
 // void main() async {
 //  WidgetsFlutterBinding.ensureInitialized();
 //  Directory document= await getApplicationDocumentsDirectory();
 //  Hive.init(document.path);
 //  await Hive.openBox<String>('friends');
 //  runApp(MyApp());







}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print('MyApp.build() calling');

    return MaterialApp(
      //Multi language
      locale: Locale('en'),
      // locale: Locale('ur'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ur'),
      ],
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      // home: SignIn(),
      //  home: SignUp(),
      // home: Nbar(),
      //  home: tabs(),
      //home: StackPracticeClass(),
      // home: DropDownn(),
      // home: Dd(),
      //  home: Task(),
      //  home: ListViewBuilder(),
      // home: ListTask(),
      //    home: SnackBarDemo(),
      //  home: IndexStack(),
      //   home: GridViewBuilder(),
      //    home: SliverListt(),
      //   home: SettingScreen(),
      //   home: BottomSheetScreen(),
      //   home: BottomSheetTask(),
        home: Croper(),
      //   home: VideoApp(),
      //  home: ExtendedImageLoadNetwork(),
      //   home: News(),
      //  home: ApiTask(),
      // home: ThemeTask(),
      //  home: QuestionList(),
      //  home: TeamScreen(),
      //  home: AboutUS(),
      //  home: WebViewExample(),
      //  home: WebViewFltterCommunity(),
      // home: WebViewCommunityPkg(),
      // home: WebViewCommunity(),
      //  home: WebViewTest(),
      // home: ProviderFirst(),
      // home: FirstScreen(),
      // home: ColumnClass(),
      // home: HeroWidget(),
      // home: TodoAppHive(),
      // home: SharedPreferencesDemo(),
      // home: MainFileSp(),   ///////Shared Perferences
      // home: TextFieldValidation(),
      // home: Validation(),
      // home: SplashScreenTask(),
      // home: Herooo(),
      // home:WelcomePage(),
      // home: RegisterUserScreen(),
      // home:FaqsScreen(),
      // home: DatePicker(),
      // home: Paypal(),
   // home:  CustomCreditCardValidation(title: Strings.appName),
      // home: SubscriptionFeeDialogue(),
      //  home: WebViewCommunity(),
      //  home: GroupTask(),
      //  home: Test(),
      //  home: WillPop(),
      // home: NewPost(),
    );
  }
}


class tabs extends StatefulWidget {
  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabs App'),
        backgroundColor: Colors.orangeAccent,
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(
              icon: Icon(Icons.call),
            ),
            Tab(
              icon: Icon(Icons.group),
            ),
            // Tab(icon: Icon(Icons.access_alarm),),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          FirstPage(),
          SecondPage(),
        ],
      ),

      // floatingActionButton: new FloatingActionButton(
      //     elevation: 0.0,
      //     child: new Icon(Icons.check),
      //     backgroundColor: new Color(0xFFE57373),
      //     onPressed: (){}
      // )
    );
  }
}

// class SignIn extends StatefulWidget {
//   @override
//   _SignInState createState() => _SignInState();
// }
//
// class _SignInState extends State<SignIn> {
//   String text = "Initial Text";
//   bool value = true;
//   int _currentIndex = 0;
//
//   // final tabs=[
//   //   HomeScreen(),
//   //   // Center(child: Text('Home'),),
//   //   Center(child: Text('Search'),),
//   //   Center(child: Text('Camera'),),
//   //   Center(child: Text('Profile'),),
//   // ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("SignIn"),
//       ),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             Image.asset(
// //               'Images/evac.png',
// //               height: 150,
// //               width: 150,
// //             ),
// //             Center(
// //               child: Container(
// //                 margin: const EdgeInsets.only(top: 5.0),
// //                 child: Column(
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.all(20.0),
// //                       child: TextField(
// //                         obscureText: true,
// //                         textAlign: TextAlign.left,
// //                         decoration: InputDecoration(
// //                           //border: InputBorder.none,
// //                           hintText: 'Email',
// //                           hintStyle: TextStyle(color: Colors.black),
// //                         ),
// //                       ),
// //                     ),
// //                     Padding(
// //                       padding: const EdgeInsets.all(20.0),
// //                       //padding: const EdgeInsets.only(left:8.0),
// //                       child: TextField(
// //                         obscureText: true,
// //                         textAlign: TextAlign.left,
// //                         decoration: InputDecoration(
// //                           hintText: 'password',
// //                           hintStyle: TextStyle(color: Colors.black),
// //                         ),
// //                       ),
// //                     )
// //                   ],
// //                 ),
// //               ),
// //             ),
// //
// //             ButtonTheme(
// //               minWidth: 300.0,
// //               buttonColor: Colors.orangeAccent,
// //               height: 30.0,
// //               // ignore: deprecated_member_use
// //               child: RaisedButton(
// //                 onPressed: () {
// //                   Scaffold.of(context).openDrawer();
// //                   print('Menu Icon pressed');
// //                 },
// //                 child: Text("Login"),
// //               ),
// //             ),
// //
// // // Row(
// // //     Checkbox(
// // //
// // //   value: value,
// // //   onChanged: (bool newValue) {
// // //     setState(() {
// // //       value = newValue;
// // //     });
// // //   },
// // // ))
// //             Row(
// //               children: [
// //                 Text("ForgetPassword"),
// //                 Checkbox(
// //                   value: value,
// //                   onChanged: (bool newValue) {
// //                     setState(() {
// //                       value = newValue;
// //                     });
// //                   },
// //                 ),
// //                 Container(
// //                   child: Text(
// //                     "SavePassword",
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             // RichText(
// //             //   text: TextSpan(
// //             //     text: 'Do not have account ',
// //             //     style: DefaultTextStyle.of(context).style,
// //             //     children: <TextSpan>[
// //             //       TextSpan(text: 'normal', style: TextStyle(fontWeight: FontWeight.normal)),
// //             //       TextSpan(text: ' SignUp!'),
// //             //     ],
// //             //   ),
// //             // )
// //
//             Center(
//               child: RichText(
//                 text: TextSpan(
//                   text: 'Don\'t have an account?',
//                   style: TextStyle(color: Colors.black, fontSize: 18),
//                   children: <TextSpan>[
//                     TextSpan(
//                         text: ' Sign up',
//                         style:
//                             TextStyle(color: Colors.blueAccent, fontSize: 18)),
//                   ],
//                 ),
//               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //       // drawer: Drawer(),
// // drawer: Drawer(
// //   child: MainDrawer(),
// // ),
//     //Bottom NavigationBar
//     //    bottomNavigationBar: BottomNavigationBar(
//     //      currentIndex: _currentIndex,
//     //         iconSize: 25,
//     //         elevation: 10,
//     //         fixedColor: Colors.black,
//     //
//     //
//     //         items: [
//     //           BottomNavigationBarItem(
//     //               icon:Icon(Icons.home),
//     //               // ignore: deprecated_member_use
//     //               title: new Text('Home'),
//     //               backgroundColor: Colors.black12),
//     //           BottomNavigationBarItem(
//     //               icon: Icon(Icons.search),
//     //               // ignore: deprecated_member_use
//     //               title: new Text('Search'),
//     //           ),
//     //           BottomNavigationBarItem(
//     //               icon:Icon(Icons.camera),
//     //               // ignore: deprecated_member_use
//     //               title: new Text('Camera'),
//     //           ),
//     //           BottomNavigationBarItem(
//     //               icon:Icon(Icons.person),
//     //               // ignore: deprecated_member_use
//     //               title: new Text('Person'),
//     //            ),
//     //         ],
//     //        onTap: (index){
//     //        setState(() {
//     //          _currentIndex=index;
//     //        });
//     // },
//     //     ),
//
//     );
//
//   }
// }

//Center(child: Image.asset('Images/evac.png',height: 150,width: 150,)),
class StackPracticeClass extends StatefulWidget {
  @override
  _StackPracticeClassState createState() => _StackPracticeClassState();
}

class _StackPracticeClassState extends State<StackPracticeClass> {
  Color _bulbColor = Colors.black;
  String colorGroupValue = '';
  String _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Stack Project",
            style: TextStyle(color: Colors.orange),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          child: Icon(Icons.check),
          backgroundColor: Colors.teal,
          onPressed: () {},
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'Images/asad.jpg',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 300, left: 40),
                    child: Text(
                      "Asad Ali",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  // ignore: deprecated_member_use
                  Padding(
                    padding: const EdgeInsets.only(top: 290, left: 200),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),

                  // // Container(
                  // child: Text('It Stack',style: TextStyle(color: Colors.blue),),
                  //   width: 120,
                  //   height: 120,
                  // ),
                  // Container(
                  //   width: 120,
                  //   height: 120,
                  //   color: Colors.blue,
                  // ),
                ],
              ),

              Icon(
                Icons.lightbulb_outline,
                size: 50,
                color: _bulbColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 'blue',
                    groupValue: colorGroupValue,
                    onChanged: (val) {
                      colorGroupValue = val;
                      _bulbColor = Colors.blue;
                      setState(() {});
                    },
                  ),
                  Text('Blue'),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Radio(
                      value: 'Red',
                      groupValue: colorGroupValue,
                      onChanged: (val) {
                        colorGroupValue = val;
                        _bulbColor = Colors.red;
                        setState(() {});
                      },
                    ),
                  ),

                  Text('Red'),

                  Radio(
                    value: 'Greens',
                    groupValue: colorGroupValue,
                    onChanged: (val) {
                      colorGroupValue = val;
                      _bulbColor = Colors.green;
                      setState(() {});
                    },
                  ),
                  Text('Green'),

                  ///Radio button end
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CupertinoSegmentedControl(
                  children: {
                    'a': Container(
                      color: _selectedValue == 'a'
                          ? Colors.blue[100]
                          : Colors.white,
                      padding:
                          EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                      child: Text('A'),
                    ),
                    'b': Container(
                      color: _selectedValue == 'b'
                          ? Colors.blue[100]
                          : Colors.white,
                      //padding: EdgeInsets.all(8),
                      padding:
                          EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                      child: Text('B'),
                    ),
                    'c': Container(
                      color: _selectedValue == 'c'
                          ? Colors.blue[100]
                          : Colors.white,
                      //padding: EdgeInsets.all(8),
                      padding:
                          EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                      child: Text('C'),
                    ),
                    'd': Container(
                      color: _selectedValue == 'd'
                          ? Colors.blue[100]
                          : Colors.white,
                      //padding: EdgeInsets.all(8),
                      padding:
                          EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                      child: Text('D'),
                    ),
                  },
                  onValueChanged: (value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 30),
              _selectedValue != null
                  ? Text(
                      _selectedValue,
                      style: TextStyle(fontSize: 50),
                    )
                  : Container(),

              //2nd Method
              // CupertinoSegmentedControl(children:
              //     {
              //       0: Text("Section 1"),
              //       1: Text ("Section 2"),
              //       2 : Text ("Section 3"),
              //     },
              //     onValueChanged:(value) {
              //     setState(() {
              //       _selectedValue = value;
              //     });
              //   }
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ), //size box will increase space among them
                    Icon(
                      CupertinoIcons.smoke,
                      size: 50,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      CupertinoIcons.add_circled,
                      size: 50,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      CupertinoIcons.airplane,
                      size: 50,
                      color: Colors.indigo,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      CupertinoIcons.alarm,
                      size: 50,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      CupertinoIcons.battery_100,
                      size: 50.0,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      FontAwesomeIcons.android,
                      size: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 50,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      FontAwesomeIcons.twitter,
                      size: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      FontAwesomeIcons.thermometer,
                      size: 50,
                      color: Colors.black87,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      FontAwesomeIcons.instagram,
                      size: 50,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),

              ///ListView.
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 44.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("Facebook"),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("Google"),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("twitter"),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("Insta"),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("snapchat"),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("youtube"),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              //ListView Vertical
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                  height: 250.0,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("Facebook"),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("Google"),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("twitter"),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("Insta"),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("snapchat"),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text("youtube"),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              //Image slider
              SizedBox(
                height: 20.0,
              ),

              SizedBox(
                  height: 300.0,
                  width: 300.0,
                  child: Carousel(
                    dotSize: 6.0,
                    dotSpacing: 18.0,
                    dotBgColor: Colors.transparent,
                    indicatorBgPadding: 10.0,
                    dotPosition: DotPosition.bottomCenter,
                    images: [
                      // Image.asset('images/asad.jpg',),
                      Image.asset(
                        'Images/asad.jpg',
                      ),
                      Image.asset(
                        'Images/ev1.png',
                      ),
                      Image.asset(
                        'Images/evac.png',
                      ),
                    ],
                  )),

              //Video View
              SizedBox(
                height: 20.0,
              ),

              // Container(
              //   height: 400,
              //   child: KiddVideoPlayer(
              //     fromUrl: true,
              //     videoUrl:
              //     'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              //   ),
              // ),
            ],
          ),
        ));
  }
}

class DropDownn extends StatefulWidget {
  @override
  _DropDownnState createState() => _DropDownnState();
}

class _DropDownnState extends State<DropDownn> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: DropdownButton(
              isExpanded: true,
              //to control text overflow
              underline: SizedBox(),
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text(
                    "First Item" * 5, maxLines: 1,
                    // overflow: TextOverflow.ellipsis,
                    // softWrap: false,
                  ),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text(
                    "Second Item" * 5,
                    maxLines: 1,
                    // overflow: TextOverflow.ellipsis,
                    // softWrap: false,
                  ),
                  value: 2,
                ),
                DropdownMenuItem(
                    child: Text(
                      "Third Item" * 5, maxLines: 1,
                      // overflow: TextOverflow.ellipsis,
                      // softWrap: false,
                    ),
                    value: 3),
                DropdownMenuItem(
                    child: Text(
                      "Fourth Item" * 5, maxLines: 1,
                      // overflow: TextOverflow.ellipsis,
                      // softWrap: false,
                    ),
                    value: 4)
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
        ),
      ),
    );
  }
}

class Dd extends StatefulWidget {
  @override
  _DdState createState() => _DdState();
}

class _DdState extends State<Dd> {
  String valueChoose;
  List listItem = [
    'Item1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    'Item2,Item2,Item2,Item2,Item2,Item2,Item2,Item2,Item2,Item2,Item2,',
    'Item3,Item3,Item3,Item3,Item3,Item3,',
    'Item4,Item4,Item4,Item4,Item4,Item4,'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop down'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownButton(
                hint: Text(
                  "Select Item:",
                ),
                //
                dropdownColor: Colors.grey,
                style: TextStyle(color: Colors.black, fontSize: 22),
                isExpanded: true,
                underline: SizedBox(),
                value: valueChoose,

                onChanged: (newValue) {
                  setState(() {
                    valueChoose = newValue;
                  });
                },
                items: listItem.map(
                  (valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(
                        valueItem,
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
