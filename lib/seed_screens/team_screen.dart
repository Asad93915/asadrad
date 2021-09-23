import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signin/youtube_file.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamScreen extends StatefulWidget {
  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Team Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //for Active screen //jo active ho wo uper a jyaaa
          verticalDirection:
              (_showFirst) ? VerticalDirection.down : VerticalDirection.up,
          children: [
            TeamTask(
              showFirst: _showFirst,
              onchangeListener: (value) {
                _showFirst = value;
                setState(() {});
              },
            ),
            Team(
              showFirst: _showFirst,
              onchangeListener: (value) {
                print('onChange second $value');
                _showFirst = !value;
                setState(() {});
              },
            ),
            Container(
              height: 10.0,
            ),
            // Team(),
          ],
        ),
      ),
    );
  }
}

class TeamTask extends StatefulWidget {
  final bool showFirst;
  final Function(bool) onchangeListener;

  TeamTask({
    this.showFirst,
    this.onchangeListener,
  });

  @override
  _TeamTaskState createState() => _TeamTaskState();
}

class _TeamTaskState extends State<TeamTask> {
  // bool _lights1 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Help Team(Seed For Leticia)',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          trailing: CupertinoSwitch(
            // value: _lights1,
            value: widget.showFirst,

            activeColor: Colors.lightBlueAccent,
            onChanged: (bool value) {
              setState(() {
                widget.onchangeListener(value);
                // _lights1 = value;
              });
            },
          ),
          onTap: () {
            widget.onchangeListener(!widget.showFirst);
            // setState(() {
            //   // _lights1 = !_lights1;
            // });
          },
        ),

        // if (_lights1 == true)
        if (widget.showFirst == true)
          Stack(
            children: [
              Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.grey,
                child: GestureDetector(
                  onTap: () {
                    launch("https://www.youtube.com/watch?v=yR9ZW4mS_EA");
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Image.network(
                          MyYoutubeInfo.getThumbnailByUrl(
                            "https://www.youtube.com/watch?v=yR9ZW4mS_EA",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 40.0,
                            width: 60.0,
                            color: Colors.black.withOpacity(0.3),
                            child: Icon(
                              CupertinoIcons.play_arrow_solid,
                              color: Colors.white,
                            )),
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.13),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0),
          child: RichText(
            text: TextSpan(
                text:
                    "Welcome your request to help Leticia raise awareness & money for her role in the mission/ministry was sent.(All donations go directly to charity 'preferenced' For Leticia's budget per ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
                children: [
                  TextSpan(
                      text: ' ECFAGuide.pdf).',
                      style:
                          TextStyle(color: Colors.blueAccent, fontSize: 16.0)),
                  TextSpan(
                    text:
                        '\n\nIf approved you share mission/ministry message by ',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  TextSpan(
                      text:
                          'signing emails, texts & social media; sign emails, texts & social media;',
                      style:
                          TextStyle(color: Colors.blueAccent, fontSize: 16.0)),
                  TextSpan(
                      text: ' enjoy in non public view until approval.',
                      style: TextStyle(fontSize: 16.0)),
                ]),
          ),
        ),

        // (_lights1=true) ? _lights2 = false :
        // ListTile(
        //   title: Text(
        //       "Seed For You (Not Letica) ",
        //     style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
        //   ),
        //   trailing: CupertinoSwitch(
        //     value: _lights2,
        //     // value: (_lights1) ? _lights2 = true : _lights1 = true,
        //     activeColor: Colors.lightBlueAccent,
        //     onChanged: (bool value){
        //     setState(() {
        //       _lights2=value;
        //       // if(_lights1==false)
        //       //   {
        //       //     _lights2==true;
        //       //   }
        //       // else{
        //       //   _lights1==false;
        //       // }
        //       // (_lights2 = false) ? _lights1 = true : _lights2 = false;
        //
        //     });
        //     },
        //   ),
        //   onTap: (){
        //     setState(() {
        //       _lights2= !_lights2;
        //
        //     });
        //
        //   },
        //
        // ),
        //
        // Padding(
        //   padding: const EdgeInsets.only(left:8.0,right: 8.0),
        //   child: Text("If instead of helping Leticia you want to raise awarness & money for you role in the mission/ministry turn switch on.Request goes to charity for review.",
        //   textAlign: TextAlign.justify,
        //   style: TextStyle(color: Colors.black,fontSize: 16.0,),
        //   ),
        // ),

        // if(_lights2==true)
        //   Team(),

        // Team(),
      ],
    );
  }
}

class Team extends StatefulWidget {
  final bool showFirst;
  final Function(bool) onchangeListener;

  Team({
    this.showFirst,
    this.onchangeListener,
  });

  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  // var _lights1 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Seed For You (Not Letica) ",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          trailing: CupertinoSwitch(
              // value: _lights1,
              value: !widget.showFirst,
              // value: (_lights1) ? _lights2 = true : _lights1 = true,
              activeColor: Colors.lightBlueAccent,
              onChanged: (bool value) {
                widget.onchangeListener(value);
              }
              //   setState(() {
              //     // _lights1 = value;
              //     // if(_lights1==false)
              //     //   {
              //     //     _lights2==true;
              //     //   }
              //     // else{
              //     //   _lights1==false;
              //     // }
              //     // (_lights2 = false) ? _lights1 = true : _lights2 = false;
              //   });
              // },
              ),
          onTap: () {
            // setState(() {
            //   _lights1 = !_lights1;
            // });
            widget.onchangeListener(widget.showFirst);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Text(
            "If instead of helping Leticia you want to raise awareness & money for your role in the mission/ministry turn switch on.Request goes to charity for review.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        if (!widget.showFirst == true) Requests(),
      ],
    );
  }
}

class Requests extends StatefulWidget {
  final Function onTap;

  const Requests({Key key, this.onTap}) : super(key: key);

  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  String colorGroupValue1 = '';
  String colorGroupValue2 = '';

  var _lights1 = false;
  var _lights2 = false;
  bool _isVisible = false;

  // _isVisibe(){
  //   setState(() {
  //     Table();
  //   });
  // }
  //  showTable() {
  //   setState(() {
  //     Table();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.grey,
              child: GestureDetector(
                onTap: () {
                  launch("https://www.youtube.com/watch?v=yR9ZW4mS_EA");
                },
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.network(
                        MyYoutubeInfo.getThumbnailByUrl(
                          "https://www.youtube.com/watch?v=yR9ZW4mS_EA",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 40.0,
                          width: 60.0,
                          color: Colors.black.withOpacity(0.3),
                          child: Icon(
                            CupertinoIcons.play_arrow_solid,
                            color: Colors.white,
                          )),
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.13),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            top: 10.0,
          ),
          child: Row(
            children: [
              Text(
                "Others could help you seed(Team for you)?",
                style: TextStyle(fontSize: 16.0),
              ),
              Container(
                height: 20.0,
                width: 20.0,
                child: Icon(
                  FontAwesomeIcons.question,
                  size: 13.0,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Radio(
                value: 'Yes',
                groupValue: colorGroupValue1,
                onChanged: (val) {
                  colorGroupValue1 = val;
                  setState(() {});
                }),
            Text(
              "Yes",
            ),
            Radio(
                value: 'No',
                groupValue: colorGroupValue1,
                onChanged: (val) {
                  colorGroupValue1 = val;
                  setState(() {});
                }),
            Text(
              "No",
            ),
          ],
        ),
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
              ),
              child: Row(
                children: [
                  Text(
                    "Could others use your pattern generally?",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Container(
                    height: 20.0,
                    width: 20.0,
                    child: Icon(
                      FontAwesomeIcons.question,
                      size: 14.0,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )),
        Row(
          children: [
            Radio(
              value: 'Yes',
              groupValue: colorGroupValue2,
              onChanged: (val) {
                colorGroupValue2 = val;
                setState(() {});
              },
            ),
            Text(
              "Yes",
            ),
            Radio(
              value: 'No',
              groupValue: colorGroupValue2,
              onChanged: (val) {
                colorGroupValue2 = val;
                setState(() {});
              },
            ),
            Text(
              "No",
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 13.0,
          ),
          child: Row(
            children: [
              Text(
                "Request From others:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 14.0,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (_isVisible) {
                      _isVisible = false;
                    } else {
                      _isVisible = true;
                    }
                  });
                },
                child: Text(
                  "Click Open",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blueAccent),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 20.0,
              ),
            ],
          ),
        ),
        if (_isVisible) Table(),
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 13.0,
                top: 10.0,
              ),
              child: Text(
                "Who Edit's What?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            )),
        ListTile(
          title: Text(
            'Team Member can edit profile pic,contact info & bussiness logo.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          trailing: CupertinoSwitch(
            value: _lights1,
            onChanged: (bool value) {
              setState(() {
                _lights1 = value;
              });
            },
          ),
          onTap: () {
            setState(() {
              _lights1 = !_lights1;
            });
          },
        ),
        ListTile(
          title: Text(
            ' Team Member can add live stream events,prayer request,news update & a few mission/ministry pics ',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 16.0),
          ),
          trailing: CupertinoSwitch(
            value: _lights2,
            onChanged: (bool value) {
              setState(() {
                _lights2 = value;
              });
            },
          ),
          onTap: () {
            setState(() {
              _lights2 = !_lights2;
            });
          },
        ),
      ],
    );
  }
}

class Table extends StatefulWidget {
  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<Table> {
  String colorGroupValue = '';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext, index) {
          return Container(
            margin: EdgeInsets.all(5.0),
            color: Color(0xfff0f0f0),
            child: Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name Of Person Requesting:",
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Name Goes Here",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Request is To: ",
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                  Text(
                    "Help You Seed (Team For You)",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Ok Or Need More Info:",
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 'Approved',
                          groupValue: colorGroupValue,
                          onChanged: (val) {
                            colorGroupValue = val;
                            setState(() {});
                          }),
                      Text(
                        'Approved',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Radio(
                          value: 'Declined',
                          groupValue: colorGroupValue,
                          onChanged: (val) {
                            colorGroupValue = val;
                            setState(() {});
                          }),
                      Text(
                        'Declined',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value:
                              'Send Questions To Get To Know Prospective Teammember',
                          groupValue: colorGroupValue,
                          onChanged: (val) {
                            colorGroupValue = val;
                            setState(() {});
                          }),
                      Expanded(
                          child: Text(
                              'Send Questions To Get To Know Prospective Teammember',
                              style: Theme.of(context).textTheme.bodyText2)),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
