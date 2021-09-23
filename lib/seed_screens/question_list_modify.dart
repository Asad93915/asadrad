import 'package:flutter/material.dart';
class QuestionList extends StatefulWidget {
  @override
  _QuestionListState createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  List<String> questionList=[
    " 1) Been involved in missions or ministry before?",
    " 2) Raised money and or awareness for missions or ministry before?",
    " 3) Ever had missions,ministry or financial license or authorization cancelled?",
    " 4) Ever charged or convinced or plead guilty or no contest to any feiony misdemeanor or violation of federal or state insurance, investments,banking or financial regulation statutes?",
    " 5) Ever terminated or resigned because of fraud or wrongly taking of property?",
    " 6) Coimed bankruptcy personally or corporately?",
    " 7) Any missions or ministry lawsuit or claim ever been made against you?",
    " 8) Been the subject of formal missions or ministry conduct complain?",
    " 9) Email 1)biography,resume,cv.2)Samples of facebook posts(FB name) 3) Complete this credit check form or go to freecreditreport.com for credit check and send summary result.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 4.0,right: 4.0,top: 10.0,bottom: 20.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFd2d2d4)),
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xFFebebed)
          ),

          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.0,),
                Text("Answer these Questions",style: TextStyle(color: Color(0xFF93b9e2),fontFamily: "AppFont3",fontSize: 18.0,fontWeight: FontWeight.bold, ),),
                SizedBox(height: 8.0,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.vertical,
                  keyboardDismissBehavior:
                  ScrollViewKeyboardDismissBehavior.manual,
                  itemCount: questionList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Column(
                          children: [
                            // questionList
                            _Questions(
                              // txt: "1) Been nvolved in missions or ministry before?",
                              txt: questionList[index],

                              onTap: (val){
                                print('its val : $val');
                                print('its index of radio-----$index');
                              },
                            ),


                          ],

                        ),
                      ],
                    );
                  },

                ),
                Center(
                  child: Container(
                    width: 180.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Color(0xFF96c6ec
                      )), onPressed: () {
                    },
                      child: Text("SEND",style: TextStyle(color: Colors.white,fontFamily: "AppFont3",fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

// padding: const EdgeInsets.only(bottom: kFloatingActionButtonMargin + 48)
class  _Questions extends StatefulWidget {
  final String txt;
  final Function onTap;


  const _Questions({Key key, this.txt, this.onTap,}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<_Questions> {

  String colorGroupValue = '';


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:5.0,right: 5.0,top: 5.0,bottom: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(widget.txt,style: TextStyle(fontFamily: "AppFont3"),),
          Row(

            children: [
              Radio(
                  activeColor: Colors.black,
                  value: 'Yes',
                  groupValue: colorGroupValue,
                  onChanged: (val) {
                    // print('its index of onChanged-----$val');
                    colorGroupValue = val;
                    // print('its val : $val');
                    setState(() {});
                    widget.onTap(val);

                  }),
              Text("Yes",style:  TextStyle(fontFamily: "AppFont3"),),
              Radio(
                  activeColor: Colors.black,
                  value: 'No',
                  groupValue: colorGroupValue,
                  onChanged: (val) {
                    colorGroupValue = val;
                    // print('its val : $val');
                    setState(() {});
                    widget.onTap(val);
                  }),
              Text("No",style:  TextStyle(fontFamily: "AppFont3"),),
            ],
          ),

        ],

      ),
    );
  }
}