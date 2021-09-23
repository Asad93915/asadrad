import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Person Info'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Assessment(),
          ],
        ),
      ),
    );
  }
}

class Assessment extends StatefulWidget {
  @override
  _AssessmentState createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  var name;
  var father, salary, email, password;

  TextEditingController _nameCont = TextEditingController();
  TextEditingController _fatherCont = TextEditingController();
  TextEditingController _salaryCont = TextEditingController();
  TextEditingController _emailCont = TextEditingController();
  TextEditingController _passwordCont = TextEditingController();

  String nameValue;
  String fatherValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
      child: Column(
        children: [
          //     TextField(
          //       textAlign: TextAlign.left,
          //       decoration: InputDecoration(
          //         hintText:"Name",
          //         focusedBorder: OutlineInputBorder(
          //           borderSide: BorderSide(color: Colors.blue, width: 0.5),
          //         ),
          //         enabledBorder: OutlineInputBorder(
          //           borderSide: BorderSide(color: Colors.blue, width: 0.5),
          //           borderRadius: BorderRadius.circular(15.0),
          //     ),
          // ),
          //     ),
          CommonTextField(
            controller: _nameCont,
            txt: "Name",
          ),
          SizedBox(
            height: 8.0,
          ),
          CommonTextField(
            controller: _fatherCont,
            txt: "Father Name",
          ),
          SizedBox(
            height: 8.0,
          ),
          CommonTextField(
            controller: _salaryCont,
            txt: 'Salary',
            type: TextInputType.number,
          ),
          SizedBox(
            height: 8.0,
          ),
          Dropdown(),

          SizedBox(
            height: 8.0,
          ),
          CommonTextField(
            controller: _emailCont,
            txt: 'Email',
            type: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 8.0,
          ),
          CommonTextField(
            controller: _passwordCont,
            txt: 'Password',
          ),
          SizedBox(
            height: 8.0,
          ),
          CBox(),
          SizedBox(
            height: 8.0,
          ),
          SaveButton(
            onTap: () {
              setState(() {
                name = _nameCont.text;
                father = _fatherCont.text;
                salary = _salaryCont.text;
                email = _emailCont.text;
                password = _passwordCont.text;
              });
            },
          ),
          Text("$name"),
          Text("$father"),
          Text("$salary"),
          Text("$email"),
          Text("$password"),
        ],
      ),
    );
  }
}

class CommonTextField extends StatefulWidget {
  final String txt;
  final TextInputType type;
  final TextEditingController controller;

  CommonTextField({
    this.txt,
    this.type = TextInputType.text,
    @required this.controller,
  });

  // this.controller=TextEditingController

  @override
  _CommonTextFieldState createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  // final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      textAlign: TextAlign.left,
      keyboardType: widget.type,
      decoration: InputDecoration(
          hintText: widget.txt,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 0.5),
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 0.5),
            borderRadius: BorderRadius.circular(15.0),
          )),
    );
  }
}

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Container(
            height: 55,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: DropdownButton(
              underline: SizedBox(),
              //to remove underline
              hint: Text("Select Gender"),
              isExpanded: true,
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Male',
                    ),
                  ),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Female',
                    ),
                  ),
                  value: 2,
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

class CBox extends StatefulWidget {
  @override
  _CBoxState createState() => _CBoxState();
}

class _CBoxState extends State<CBox> {
  String text = "Initial Text";
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Checkbox(
                value: value,
                onChanged: (bool newValue) {
                  setState(() {
                    value = newValue;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Text(
                  "Are You Ready For submit?",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SaveButton extends StatefulWidget {
  final Function onTap;

  SaveButton({this.onTap});

  @override
  _SaveButtonState createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TextField(
        //   // controller: myController,
        // ),

        ButtonTheme(
          minWidth: 200,
          height: 100.0,
          child: ElevatedButton(
            child: Text('Save'),
            onPressed:
              widget.onTap(),

          ),
        ),
      ],
    );
  }
}
