import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TextFieldValidation extends StatefulWidget {
  @override
  _TextFieldValidationState createState() => _TextFieldValidationState();
}

class _TextFieldValidationState extends State<TextFieldValidation> {
  var name;
  var age;
  //for shown name and age
  final nameCon=TextEditingController();
  final ageCon=TextEditingController();


  final _text = TextEditingController();
  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0),
            child: TextField(
              controller: nameCon,
              decoration: InputDecoration(
                // hintText:'Name',
                labelText:'Name',
                labelStyle: TextStyle(color: Colors.black,fontSize: 18.0,),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20.0,),bottomRight: Radius.circular(20.0,)),
                  // borderRadius: BorderRadius.circular(15.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:   BorderRadius.only(topRight: Radius.circular(20.0,),bottomRight: Radius.circular(20.0,)),
                  // borderRadius:   BorderRadius.circular(15.0),
                ),

                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 15.0),
            child: TextField(
              controller: ageCon,
              decoration: InputDecoration(
                // hintText:'Age',
                labelText:'AGE',
                labelStyle:TextStyle(color: Colors.black,fontSize: 18.0,),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),topRight: Radius.circular(20.0,)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),topRight: Radius.circular(20.0,)),
                ),
                // errorText: _validate ? 'Value Can\'t Be Empty' : null,
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),


            ),
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(shape: StadiumBorder()),
              onPressed: ()
          {setState(() {
            name=nameCon.text;
            age=ageCon.text;
            _text.text.isEmpty ? _validate = true : _validate = false;
          });
          },
              child: Text("Submit ")),
          Text("$name ",style: TextStyle(color: Colors.blue,fontSize: 18.0),),
          Text("$age",style: TextStyle(color: Colors.blue,fontSize: 18.0),),
        ],
      ),
    );
  }
}
