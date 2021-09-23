import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signin/youtube_file.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            WelcomeScreenSeed(),

          ],
        ),
      )
    );

  }
}



class WelcomeScreenSeed extends StatefulWidget {
  @override
  _WelcomeScreenSeedState createState() => _WelcomeScreenSeedState();
}

class _WelcomeScreenSeedState extends State<WelcomeScreenSeed> {
  @override
  Widget build(BuildContext context) {
   return Column(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Padding(
         padding: const EdgeInsets.only(left: 12.0,top: 30.0),
         child: Row(
           children: [
             Container(
               height: 40.0,
               width: 40.0,
               child: Icon(
                 FontAwesomeIcons.facebook,
                 size: 30.0,
                 color: Colors.white,
               ),
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.black,
               ),
             ),
             Container(
               height: 40.0,
               margin: EdgeInsets.only(left: 5.0),
               width: 40.0,
               child: Icon(
                FontAwesomeIcons.instagram ,size: 30.0,color: Colors.white,

               ),
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.black,
               ),
             ),
             Container(
               height: 40.0,
               width: 40.0,
               margin: EdgeInsets.only(left: 5.0),
               child: IconButton(
                icon:Icon(FontAwesomeIcons.twitter, size: 30.0,
                 color: Colors.white,),
               ),
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.black,
               ),
             ),
             Container(
               height: 40.0,
               width: 40.0,
               margin: EdgeInsets.only(left: 5.0),
               child: Icon(
                 FontAwesomeIcons.linkedinIn,
                 size: 30.0,
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
       Text("Powered By The Holy Spirit",style: TextStyle(fontSize: 16.0,color: Color(0xFF7e7f81)),),
       Padding(
         padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
         child: Column(
           children: [
             Text("EMAIL & TEXT WITH YOUR GREATER PURPOSE!\n",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.black54),),
             Text("Transform daily email & text into mission/ministry\nfunding, prayer support & getting others to travel\nwith you live online! It’s natural, non-invasive,\nnurturing & easy to do.\n\nCreated by a Missionary/Minister for\nMissionaries/Ministers needing \$1,000 - \$2,000\nfor short-term missions, many \$1,000’s for\nfull-time missions support or much more for a\nGreat Commission project or ministry.\n",style: TextStyle(fontSize: 16.0,color: Color(0xFF97989a)),textAlign: TextAlign.justify,),

             Stack(
               children: [
                 Container(
                   height: 200.0,
                   width: 350.0,
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
           ],
         ),
       ),

       SizedBox(height: 35.0,),
       Container(
         color: Color(0xFF95c5ed),
         width: double.infinity,
         child: Column(
           children: [
             Center(
                 child: Text("\nYour Mission/Ministry \n‘Signature’ In All Texts",style: TextStyle(fontSize: 20.0,color: Colors.white),)),
             Image.asset(
               'Images/one.png',
             ),
             Image.asset(
               'Images/two.png',
               height: 500.0,
               width: 400.0,
             ),

             Center(
                 child: Text("\nThose You Email & Text Click Your \n        ‘Signature’& Link To Your \n     Mission/Ministry Webpage",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),
                 )),
             SizedBox(height: 25.0,),
             Image.asset(
               'Images/three.png',
             ),
             SizedBox(height: 20.0,),
             Center(
                 child: Text("  Your Mission/Ministry\n‘Signature’ In All Emails  \n\n",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),
                 )),
           ],
         ),
       ),
       Container(height: 20.0,color: Colors.white,),
       Container(
         color: Colors.white,
         width: double.infinity,
         child: Column(
           children: [
             Center(
                 child: Text("Who Can Use SeedForMe?\n",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold,color: Color(0xFFedbe47),),
                 )),
             Image.asset(
                 'Images/four.png',
             ),

             Center(
                 child: Text("\nCareer Missionaries\n  With Non-Profits",style: TextStyle(fontSize: 20.0,color: Color(0xFF97989a)),
                 )),
             SizedBox(height: 20.0),
             Image.asset(
               'Images/five.png',
             ),

             Center(
                 child: Text("\nThose Doing Short Term \n     Mission Trips With\n",style: TextStyle(fontSize: 20.0,color: Color(0xFF97989a))),),
             Image.asset(
               'Images/six.png',
             ),
             Center(
                 child: Text(" \n Church, Ministry\n& Charity Members \n",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Color(0xFF97989a)),
                 )),],


         ),
       ),
       TwoCards(
         txt1: 'Teams',
        txt2: 'We designed a unique way to build a team little\nby little as people you know see your daily\nemails & texts.See',
         txt3: ' How It Works',
         txt4: ' for more\ndetails. \n\n\n',
       ),
       SizedBox(width: 10.0,),
       TwoCards(
         txt1: 'Individuals',
         txt2: 'Volunteers, members & employees approved\nby charity’s Board of Directors for missions or\nministry & have a defined budget can check\nout SeedForMe.See',
         txt3: ' ECFA.pdf.\n\n\n',
       ),
       SizedBox(height: 15.0),
       Container(
         color: Colors.black,
         child: Column(
           children: [
             Image.asset(
               'Images/eight.png',
             ),
             Text("Donations Possible\n",style: TextStyle(color: Color(0xFFedbe47,),fontSize: 28.0,fontWeight: FontWeight.bold),),
             Text("On average people send 20 to 100+ personal &\nbusiness emails & texts a day. Adding mission\ncontent in texts & emails signatures can create\nhuge awareness. It’s pretty simple. More activity\ncould equal … fund your mission!\n\n\n",style: TextStyle(color: Colors.white,fontSize: 17.0,),textAlign: TextAlign.justify,)
           ],
         ),
       ),
       Container(
         color: Color(0xFFefeff0),
         height: 770.0,
         child: Column(
           children: [
             Center(
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 40.0),
                 child: RichText(text:
                 TextSpan(
                   text:'   Awesome!',style: TextStyle(color: Color(0xFF6d6e71),fontWeight: FontWeight.bold,fontSize: 28.0),
                   children: [
                     TextSpan(
                       text: ' Lay Up\nTreasures in Heaven.',style: TextStyle(color: Color(0xFF7e7f81),fontSize: 28.0,fontWeight: FontWeight.normal)
                     ),
                   ]
                 ),
                 ),
               ),
             ),
             Image.asset(
               'Images/nine.png',
             ),
             Container(
               color: Colors.white,
               width: 350.0,
               child: Center(
                 child: RichText(
                     text: TextSpan(
                   text:'\nUse SeedForMe To Fund\nYour Mission/Minstry &\nSo Much More\n\n',style: TextStyle(color: Color(0xFF4fc9f4),fontSize: 23.0,fontWeight: FontWeight.bold),
                       children: [
                         TextSpan(text: 'Use SeedForMe for hospital\nvisiting, prayer & donations (all\nmonies go to your charity\n‘preferenced’ for\nmissionary/ministry per',style: TextStyle(color: Color(0xFF97989a),fontSize: 18.0),),
                         TextSpan(text: ' ECFA\nguide.pdf.\n',style: TextStyle(fontSize: 16.0,color: Color(0xFF8bc7f2)))
                       ]
                 )),
               ),
             )
           ],
         ),
       ),
      // Container(
      //   color: Colors.white,
      // height: 30.0,),
       Container(
         color: Colors.white,
         child: Column(
           children: [
             Center(child: Text("\nStart Funding\n Your Mission\n",style: TextStyle(color: Color(0xFF6d6e71,),fontSize: 25.0,fontWeight: FontWeight.bold),)),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Column(
                   children: [
                     Image.asset(
                       'Images/ten.png'
                     ),
                     Text("Evangelism",style: TextStyle(color: Color(0xFF6d6e71),fontWeight: FontWeight.bold),)
                   ],
                 ),Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 10.0),
                       child: Image.asset(
                         'Images/eleven.png'
                       ),
                     ),
                     Text("Medical Mission",style: TextStyle(color: Color(0xFF6d6e71),fontWeight: FontWeight.bold),)
                   ],
                 ),

               ],
             ),
             SizedBox(height: 5.0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Column(
                   children: [
                     Image.asset(
                         'Images/fourteen.png'
                     ),
                     Text("Disaster Relief",style: TextStyle(color: Color(0xFF6d6e71),fontWeight: FontWeight.bold),)
                   ],
                 ),Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 10.0),
                       child: Image.asset(
                           'Images/fifteen.png'
                       ),
                     ),
                     Text("Substance Abuse",style: TextStyle(color: Color(0xFF6d6e71),fontWeight: FontWeight.bold),)
                   ],
                 ),

               ],
             ),
             SizedBox(height: 5.0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Column(
                   children: [
                     Image.asset(
                         'Images/tweleve.png'
                     ),
                     Text("Marriage Ministry",style: TextStyle(color: Color(0xFF6d6e71),fontWeight: FontWeight.bold),)
                   ],
                 ),Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 10.0),
                       child: Image.asset(
                           'Images/thirteen.png'
                       ),
                     ),
                     Text("Homeless Housing",style: TextStyle(color: Color(0xFF6d6e71),fontWeight: FontWeight.bold),)
                   ],
                 ),

               ],
             ),

             SizedBox(height: 5.0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Column(
                   children: [
                     Image.asset(
                         'Images/sixteen.png'
                     ),
                     Text("Orphanage",style: TextStyle(color: Color(0xFF6d6e71),fontWeight: FontWeight.bold),)
                   ],
                 ),Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 10.0),
                       child: Image.asset(
                           'Images/seventeen.png'
                       ),
                     ),
                     Text("Feeding The Hungry ",style: TextStyle(color: Color(0xFF6d6e71),fontWeight: FontWeight.bold),),


                   ],
                 ),

               ],
             ),
             SizedBox(height: 70.0,)

           ],
         ),
       ),

       Container(
         color: Color(0xFF48c7f4),
         width: double.infinity,
         child: Column(
           children: [
             Text("\n  Transform Your\nMissions Funding\n  With SeedForMe\n",style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),
             CardList(

               txt1: '       Inventor Of ‘Virtual\nMissions/Ministry Frontier',
               txt2: 'Bring others with live online from your\nSeedForMe mission/ministry webpage.\nSee',
               txt3: ' How It Works.\n\n',
             ),
             CardList(
               txt1: 'Creators Of Mission/Ministry\n  Email, Text & Social Media\n                 Signatures',
               txt2: 'Our signatures link from your email,\ntext & social media messages to your\nSeedForMe mission/ministry webpage.\nVisitors can go live with you virtually,\npray and donate.\n\n',
             ),
             CardList(
               txt1: 'Extremely Cost-Effective\nIndustry Leading Pricing',
               txt2: '\$10/month individual or \$15/month\nbusiness. You can pause subscription\nany time. We don’t add 15% TIP hoping\nfor 5% TIP, or extra % to the 2.25% + \$.30\nPayPal or nearly 3% credit/debit card\nprocessing fee.',
               txt3: 'See Pricing.\n\n',
             ),
             CardList(
               txt1: 'Training & Support',
               txt2: 'We are here for you with training how\nto use platform & support to make sure\nyou get up & running. Watch videos of\nlive classes or attend a live class. See',
               txt3: '\nTraining',
               txt4: ' for more.\n\n',

             ),
             CardList(
               txt1: 'Team: Others You Email, Text &\n   Social Media With Can Help',
               txt2: 'Others with your charity can Team\nfrom your mission webpage. It’s super\nfast! You & charity’s board have final\nveto power to approve/decline them.\n\n',
             ),
             CardList(
               txt1: 'SeedForMe App',
               txt2: 'We are here for you with training how\nto use platform & support to make sure\nyou get up & running. Watch videos of\nlive classes or attend a live class. See\nTraining for more.\n\n',
             ),
             SizedBox(height: 40.0,)
           ],
         ),
       )
     ],
   );
  }
}

class TwoCards extends StatefulWidget {
  final String txt1;
  final String txt2;
  final String txt3;
  final String txt4;


  const TwoCards({Key key, this.txt1, this.txt2, this.txt3, this.txt4}) : super(key: key);
  @override
  _TwoCardsState createState() => _TwoCardsState();
}

class _TwoCardsState extends State<TwoCards> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.only(
          left: 18.0, right: 18.0, bottom: 35.0, ),
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: Color(0xFFefeff0),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 60.0,
                color: Color(0xFF48c7f4),
                // child: Center(child: Text("Teams",style: TextStyle(color: Colors.white,fontSize: 25.0,),))),
                child: Center(child: Text(widget.txt1,style: TextStyle(color: Colors.white,fontSize: 25.0,),))),
            SizedBox(height: 20.0,),
            Container(
              child: RichText(
                text: TextSpan(
                    // text: 'We designed a unique way to build a team little\nby little as people you know see your daily\nemails & texts.See',
                    text: widget.txt2,
                    style: TextStyle(color: Color(0xFF97989a),fontSize: 16.0),
                    children:[
                      TextSpan(
                        // text: ' How It Works',style: TextStyle(color: Colors.lightBlue),
                        text : widget.txt3,style: TextStyle(color: Colors.lightBlue),
                      ),
                      TextSpan(
                          // text: ' for more\ndetails. \n\n\n'
                          text: widget.txt4,
                        style: TextStyle(color: Color(0xFF97989a),fontSize: 16.0),
                      )
                    ]
                ),

              ),
            ),

          ],
        ),
      ),

    );
  }
}


class CardList extends StatefulWidget {

  final String txt1;
  final String txt2;
  final String txt3;
  final String txt4;

  const CardList({Key key, this.txt1, this.txt2, this.txt3, this.txt4}) : super(key: key);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      child: Card(
        semanticContainer: true,
        margin: EdgeInsets.only(
            left: 30.0, right: 30.0, bottom: 12.0, top: 12.0),
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child:Center(child: Text(widget.txt1,style: TextStyle(color: Color(0xFF6d6e71),fontSize: 20.0,fontWeight: FontWeight.bold),)),
              // child: Center(child: Text('       Inventor Of ‘Virtual\nMissions/Ministry Frontier’',style: TextStyle(color: Color(0xFF6d6e71),fontSize: 20.0,fontWeight: FontWeight.bold),)),
            ),
            RichText(
              text: TextSpan(
                // text: 'We designed a unique way to build a team little\nby little as people you know see your daily\nemails & texts.See',
                  text: widget.txt2,
                  style: TextStyle(color: Color(0xFFa4a4a4),fontSize: 18.0),
                  children:[
                    TextSpan(
                      // text: ' How It Works',style: TextStyle(color: Colors.lightBlue),
                      text : widget.txt3,style: TextStyle(color: Colors.lightBlue,fontSize: 18.0),
                    ),
                    TextSpan(
                      // text: ' for more\ndetails. \n\n\n'
                      text: widget.txt4,style: TextStyle(color: Color(0xFFa4a4a4),fontSize: 18.0)
                    )
                  ]
              ),

            ),

          ],
        ),

      ),
    );
  }
}

