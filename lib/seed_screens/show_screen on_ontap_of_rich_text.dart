
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class QuestionText extends StatefulWidget {
  const QuestionText({Key key}) : super(key: key);

  @override
  _QuestionTextState createState() => _QuestionTextState();
}

class _QuestionTextState extends State<QuestionText> {
  bool _isselected=true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(text: TextSpan(
            text: "asjhsgsdhfhbvfhdfhb",
            children: [

              TextSpan(
                  recognizer: TapGestureRecognizer()..onTap=(){
                    print("dskjnkdfnhgnhgnb");
                    Route route=  PageRouteBuilder(
                        opaque: false,
                        pageBuilder: (a,b,d){
                          return Container(
                            alignment: Alignment.center,
                            child: Container(
                              color: Colors.pink,
                              width: 100.0,
                              height: 100.0,

                            ),
                          );
                        }
                    );
                    Navigator.of(context).push(route);
                  },
                  text: "Question",style:
              (_isselected==true ) ?
              TextStyle(color: Colors.blue):TextStyle(color:Colors.black)) ,
              TextSpan(text: "ksdch bfcvj vscv vc vc ch v"),
            ]
        ))



      ],
    );
  }

}