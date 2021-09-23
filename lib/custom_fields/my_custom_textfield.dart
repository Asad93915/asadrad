import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signin/configs/sigin_colors.dart';



class CustomFields extends StatefulWidget {
  final IconData prefixIcon;
  final IconData postfixIcon;
  final String labelText;
  final String hintText;
  // final double height;
  final double width;
  final Function(String) onchange;
  final bool obscure;
  final TextInputType type;
  final TextEditingController controller;
  final FocusNode focusNode;
  final int length;
  final TextInputAction textInputAction;


  CustomFields(
      {this.focusNode = null,
        this.labelText,
        this.hintText,
        this.type,
        this.controller,
        // this.height = 50,
        this.width = double.infinity,
        this.prefixIcon = null,
        this.postfixIcon = null,
        this.onchange,
        this.obscure = false, this.length,
        this.textInputAction = TextInputAction.done,
      });

  @override
  _CustomFieldsState createState() => _CustomFieldsState();
}

class _CustomFieldsState extends State<CustomFields> {
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 1.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (widget.labelText == null) ? Container() : Text(widget.labelText,style: TextStyle(color: labelTextColor), ),
              Container(
                margin: EdgeInsets.only(top: 6.0),
                padding: EdgeInsets.only(left: 4.0,right: 4.0),
                // height: widget.height,
                width: widget.width,
                child: TextField(

                  minLines: 1,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(widget.length)
                  ],
                  onChanged: widget.onchange,
                  controller: widget.controller,
                  obscureText: widget.obscure,
                  keyboardType: widget.type,
                  focusNode: widget.focusNode,
                  textInputAction: widget.textInputAction,

                  // autovalidateMode: AutovalidateMode.always, validator: (input) => input.isValidEmail() ? null : "Check your email",
                  // validator: (value){
                  //   if(value.isEmpty){
                  //     return 'Field can not be Empty';
                  //   }
                  // },
                  style: TextStyle(color: Color(0xFF727272),fontSize: 14.0),
                  // cursorColor: Color(0xFF7f7f7f),
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.only(left: 10.0, right: 10.0, top: 12.0, bottom: 12.0),
                    // errorText: _validate ? 'Value Can\'t Be Empty' : null,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: widget.hintText,
                    hintStyle: TextStyle(color: Color(0xFF7f7f7f)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFdedede),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFdedede),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    prefixIcon: null,
                    //Icon(widget.prefixIcon,),
                    suffixIcon: null, // Icon(widget.postfixIcon)
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
