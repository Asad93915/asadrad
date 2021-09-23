import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; //this is an external package for formatting date and time

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState()
  {
    return _DatePickerState();

  }
}

class _DatePickerState extends State<DatePicker> {
  String date = "";
  String dateofbirth;
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Datepicker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // _selectDate(context);
              },
              child: Text("Choose Date"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19.0,right: 19.0),
              child: Container(
              
                width: double.infinity,
                padding: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                  child: GestureDetector(
                      onTap:
                          () async {
                        dateofbirth = await _selectDate(
                            context)
                            .then(
                                (value) {
                              return value
                                  .toString();
                            });
                        setState(
                                () {});
                      },
                      child: Text(
                        dateofbirth ==
                            null
                            ? 'Select date of birth'
                            : "${dateofbirth}",
                        style: TextStyle(
                            color:
                            Color(0xFF727272)),
                      ))
                  // GestureDetector(
                  //   onTap: (){
                  //     _selectDate(context);
                  //   },
                  //     child: Text("${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"))
              ),
            )
          ],
        ),
      ),
    );
  }

  // _selectDate(BuildContext context) async {
  //   final DateTime selected = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate,
  //     firstDate: DateTime(2010),
  //     lastDate: DateTime(2025),
  //   );
  //   if (selected != null && selected != selectedDate)
  //     setState(() {
  //       selectedDate = selected;
  //     });
  // }
  Future<DateTime> _selectDate(BuildContext context) async {
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2050),
    );
    if (selected != null) {
      return selected;
    } else {
      return DateTime.now();
    }
  }
}
