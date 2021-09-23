import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as Dev;

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key key}) : super(key: key);

  @override
  _FaqsScreenState createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  List <String> faqsQuestionList = [

    "FAqs",
    "Who Uses SeedForme & How is it Used?",
    "Less Stress more donations How does Seedforme helps",
    "Big Donation Potential: How Are Professional Involved in",
    "Seedforme Price & How It Can Be Covered in The Donation",
  ];
  List<String> faqsAnsList=[
    "asadasadasadasadasadasadasadasad",
    "usmamausmamausmamausmamausmamausmamausmamausmamausmamaUsaamamamammamammamammamamammamammamamam",
    "ShafqatShafqatShafqatShafqatShafqatShafqatShafqatShafqatShafqatShafqatShafqatShafqat",
    "AhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsanAhsan",
    "UmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmerUmer",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Faqs",
            style: TextStyle(fontFamily: "AppFont2"),
          ),
        ),
        body: Column(
          children: [

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // scrollDirection: Axis.vertical,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
              itemCount: faqsQuestionList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Column(
                      children: [
                        FaqsItem(
                          titleText: faqsQuestionList[index],
                          text: faqsAnsList[index],

                        )
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ));
  }
}

class FaqsItem extends StatefulWidget {
  final String titleText;
  final String text;

  const FaqsItem({
    Key key,
    this.titleText = "",
    this.text = "",
  }) : super(key: key);

  @override
  _FaqsItemState createState() => _FaqsItemState();
}

class _FaqsItemState extends State<FaqsItem> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  bool _isExpanded = false;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _controller.addStatusListener((status) {
      myLog('Animation State: ${status.index}');
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12.0, right: 12.0, top: 4.0, bottom: 4.0),
      child: Card(
        shadowColor: Colors.transparent,

        elevation: 0.0,
        clipBehavior: Clip.antiAlias,
        // color: Colors.amberAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    // color: Colors.greenAccent,
                    margin: EdgeInsets.only(left: 24.0, right: 24.0),
                    child: Text(
                      widget.titleText,
                      style: TextStyle(
                        fontFamily: "AppFont2",
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.yellow,width: 1.5)
                  ),
                  // margin: EdgeInsets.only(right: 6.0),
                  child: TextButton(
                    // padding: EdgeInsets.all(0.0),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(
                        0.0,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                          (_isExpanded)
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down_sharp,
                          // (_isExpanded) ? Icons.remove : Icons.add,
                          color: Colors.black),
                    ),
                    onPressed: () async {
                      if (_isExpanded == false) {
                        _isExpanded = true;
                        await _controller.forward(from: 0.0);
                      } else {
                        _isExpanded = false;
                        await _controller.reverse(from: 1.0);
                      }

//            Utils.myLog('item index[${widget.index}] Expanded[$_isExpanded]');
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            Builder(builder: (context) {
              return Container(
                // color: Colors.greenAccent,
                child: SizeTransition(
                  sizeFactor: _animation,
                  child: Container(
                    // color: Colors.blue,
                    padding: EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      top: 6.0,
                      bottom: 6.0,
                    ),
                    // height: 0,
                    child: Text(
                      widget.text,
                      // 'Burma danio black bass straptail southern Dolly Varden orbicular velvetfish trumpetfish; bluntnose minnow. Hatchetfish pricklefish sixgill ray sawfish scaly dragonfish! Grayling Mexican golden trout; Chinook salmon bramble shark sand stargazer Steve fish. Scat zebra pleco graveldiver river shark tripod fish; flagtail bala shark warbonnet.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: "AppFont2",
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  static void myLog(String message, {isJsonString = false}) {
    if (isJsonString) {
      final jsonObject = json.decode(message);
      final jsonFormattedString =
      JsonEncoder.withIndent('  ').convert(jsonObject);
      print(
          '<--Zubair Yasin--><${DateTime.now()
              .toString()}>\n$jsonFormattedString');
    } else {
      Dev.log('<--Zubair Yasin--><${DateTime.now().toString()}>$message');
    }
  }
}
