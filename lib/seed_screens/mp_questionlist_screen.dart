import 'package:flutter/material.dart';

class QuestionList extends StatefulWidget {
  @override
  _QuestionListState createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 10.0,bottom: 5.0),
            child: Text("Answer these Questions",style: TextStyle(color: Colors.lightBlue,fontSize: 18.0,fontWeight: FontWeight.bold, ),),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              keyboardDismissBehavior:
                  ScrollViewKeyboardDismissBehavior.manual,
              itemCount: 10,
              itemBuilder: (context, index) {
                return _Questions(
                  txt: "1) Been involved in missions or ministry before?",
                  onTap: (val){
                    print('its val : $val');
                    print('its index of radio-----$index');
                  },
                );
              },
            ),
          ),
          Center(
            child: Container(
              width: 180.0,
              child: ElevatedButton(
                onPressed: () {
                },
                child: Text("SEND",style: Theme.of(context).textTheme.bodyText2,),
              ),
            ),
          ),
        ],
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
    return Column(
      children: [
        SizedBox(height: 5.0,),
        Text(widget.txt, style: Theme.of(context).textTheme.bodyText2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0,),
          child: Row(
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
              Text("Yes"),
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
              Text("No"),
            ],
          ),
        ),

      ],
    );
  }
}
