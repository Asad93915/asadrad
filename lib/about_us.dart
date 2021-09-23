
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'extended_image.dart';

class AboutUS extends StatefulWidget {
  @override
  _AboutUSState createState() => _AboutUSState();
}

class _AboutUSState extends State<AboutUS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 40.0,
          ),
          Center(
            child: ExtendedImage.network(

              //_data.mpData.data.titleImage,
              //Square Image
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPIQ3_kvrJDBEna5SvAxb1K0ieyngeZSuFFQ&usqp=CAU',


              // 'boy-girl-kashmir-children-early-ages-often-brought-to-'
              // 'begging-profession-india-165610083.jpg', //Large width image
              // Utils.assetsImage('empty_img_hd.jpg'),
              height: 150.0,
              // width: imgContWidth,
              fit: BoxFit.fill,
              loadStateChanged: Utils.extendedImageStatesBuilder,

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:50.0,right: 50.0),
            child: Text("This project is proposed & designed by Absolute Solutions as a gift to PmLn.",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment: Alignment.center,
              width: 150.0,
             decoration: BoxDecoration(
               border: Border.all(
                 color: Colors.black,width: 2.0,
               ),
               borderRadius: BorderRadius.only(topRight: Radius.circular(20.0,),bottomRight: Radius.circular(20.0,)),
             ),
              child: Text('Pak Office',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
            ),
          ),
SizedBox(
  height: 10.0,
),
          Row(
            children: [
                Container(width: 5.0,),
              Expanded(
                flex: 1,
                  child: Icon(FontAwesomeIcons.home,)),
              Expanded(
                flex: 9,
                child: Text(
                  "Office No. 902-B,9th Floor, Haly Tower, Phase-II DHA, Lahore Cantt, Pakistan",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
          Container(height: 4.0,),
          Row(
            children: [
              Container(width: 5.0,),
              Expanded(
                  flex: 1,
                  child: Icon(FontAwesomeIcons.phone,)),
              Expanded(
                flex: 9,
                child: Text(
                  "+92-423-6626456",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
          Container(height: 4.0,),
          Row(
            children: [
              Container(width: 5.0,),
              Expanded(
                flex: 1,
                  child: Icon(Icons.web),
              ),
              Expanded(
                flex: 9,
                  child:Text("www.ab-sol.net",style: Theme.of(context).textTheme.bodyText2,)
              ),

            ],
          ),

          //KSA
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment: Alignment.center,
              width: 150.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,width: 2.0,
                ),
                borderRadius: BorderRadius.only(topRight: Radius.circular(20.0,),bottomRight: Radius.circular(20.0,)),
              ),
              child: Text('KSA Office',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Container(width: 5.0,),
              Expanded(
                  flex: 1,
                  child: Icon(FontAwesomeIcons.home,)),
              Expanded(
                flex: 9,
                child: Text(
                  "Dabbab Street, Riyadh, Saudi Arabia",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
          Container(height: 4.0,),
          Row(
            children: [
              Container(width: 5.0,),
              Expanded(
                  flex: 1,
                  child: Icon(CupertinoIcons.mail,)),
              Expanded(
                flex: 9,
                child: Text(
                  "salesKsa@ab-sol.net",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
          Container(height: 4.0,),
          Row(
            children: [
              Container(width: 5.0,),
              Expanded(
                  flex: 1,
                  child: Icon(FontAwesomeIcons.phone,)),
              Expanded(
                flex: 9,
                child: Text(
                  "+966-1-4127523",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
          Container(height: 4.0,),
          Row(
            children: [
              Container(width: 5.0,),
              Expanded(
                flex: 1,
                child: Icon(Icons.web),
              ),
              Expanded(
                  flex: 9,
                  child:Text("www.ab-sol.net",style: Theme.of(context).textTheme.bodyText2,)
              ),

            ],
          ),

          //USA OFFICE

          Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment: Alignment.center,
              width: 150.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,width: 2.0,
                ),
                borderRadius: BorderRadius.only(topRight: Radius.circular(20.0,),bottomRight: Radius.circular(20.0,)),
              ),
              child: Text('USA Office',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Container(width: 5.0,),
              Expanded(
                  flex: 1,
                  child: Icon(FontAwesomeIcons.home,)),
              Expanded(
                flex: 9,
                child: Text(
                  "9128 Strada PI.Suite # 10115, Naples. FL. 34108",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),

          Container(height: 4.0,),
          Row(
            children: [
              Container(width: 5.0,),
              Expanded(
                  flex: 1,
                  child: Icon(FontAwesomeIcons.phone,)),
              Expanded(
                flex: 9,
                child: Text(
                  "+1(516)789-0352",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
          Container(height: 4.0,),
          Row(
            children: [
              Container(width: 5.0,),
              Expanded(
                flex: 1,
                child: Icon(Icons.web),
              ),
              Expanded(
                  flex: 9,
                  child:Text("www.ab-sol.net",style: Theme.of(context).textTheme.bodyText2,)
              ),

            ],
          ),
        ],
      ),
    );
  }
}
