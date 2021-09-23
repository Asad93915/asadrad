import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signin/conttrollers_textfield_validation.dart';



class SubscriptionFeeDialogue extends StatefulWidget {
  @override
  _SubscriptionFeeDialogueState createState() => _SubscriptionFeeDialogueState();
}

class _SubscriptionFeeDialogueState extends State<SubscriptionFeeDialogue> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SubscriptionFeeDialogueS'),
      ),
      body: Column(

        children: [


          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 20.0),
            child: Container(
            height: 300.0,
            width: double.infinity,
            // color: Color(0xFFf2f2f2),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFd3d3d3),),
                color: Color(0xFFf2f2f2),
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                    text:TextSpan(
                      text: 'Good news! Things are working.\nYou’ve got the hang of it.\nPlease tend to monthly subscription.\n',
                      style: TextStyle(color: Color(0xFF595959),fontSize: 23.0,fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Click ‘workers are worthy of their hire.’',
                          style: TextStyle(color: Color(0xFF476de2))
                        )
                      ]
                    ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(onPressed: (){
            return buildShowDialog(context);
          },
              child: Text("Dialog Screen")),
        ],
      ),
    );
  }

  Future buildShowDialog(BuildContext context) {
    return showDialog(


      context: context,
      builder: (context){

        return Dialog(
          backgroundColor:Color(0xFFf2f2f2),

          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(20.0),
          //
          // ),
          child: Container(
            height: 450.0,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 10.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                      child: IconButton(icon: Icon(CupertinoIcons.clear,color: Color(0xFFa29b9a),size: 18.0,), onPressed:(){Navigator.pop(context);})),
                  SizedBox(height: 20.0,),
                  Text("Thank’s for trying SeedForMe. Could you please tend to \$10 monthly subscription now?",style: TextStyle(color: Color(0xFF5c5c5c),fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  SizedBox(height: 25.0,),
                  Text("We can’t provide platform without your help, so now\ngoing non-public view mode\nfor 3 days then no service.",style: TextStyle(color: Color(0xFF5c5c5c),fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                 SizedBox(height: 40.0,),
                  Container(
                    height: 60.0,

                    child: ElevatedButton(
                      onPressed: (){
                        //do something
                      },
                      style: ElevatedButton.styleFrom(primary: Color(0xFF0070c0),side: BorderSide(color: Colors.black),),


                      child: Text("Go Back To Payment Form",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
            ),
          ),

        );
      }
    );
  }
}